<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Student extends Model
{
    protected $fillable = [
        'name',
        'academic_record',
        'user_id',
        'cpf',
        'course_period',
        'cell_number',
        'name_responsible',
        'cpf_responsible',
        'cell_number_responsible',
        'address',
        'course'
    ];
    public function course(){

        $course = $this->course;

        switch ($course) {
            case 1:
                return "Técnico em Edificações";
                break;
            case 2:
                return "Técnico em Informática";
                break;
            case 3:
                return "Arquitetura e Urbanismo";
                break;
            case 4:
                return "Licenciatura em Computação";
                break;
            case 5:
                return "Especialização em Docência";
                break;
            case 6:
                return "Edificações PROEJA";
                break;
            case 7:
                return "Informática para Internet";
                break;
            case 8:
                return "Manutenção e Suporte em Informática";
                break;
            case 9:
                return "Desenhista da Construção Civil";
                break;
            case 10:
                return "Operador de computador";
                break;
            case 11:
                return "Administração";
                break;
            default: return "Nenhum curso atribuido";
                break;
        }
    }
}
/*
"0": "Selecione um curso",
"1": "Técnico em Edificações",
"2": "Técnico em Informática",
"3": "Arquitetura e Urbanismo",
"4": "Licenciatura em Computação",
"5": "Especialização em Docência",
"6": "Edificações PROEJA",
"7": "Informática para Internet",
"8": "Manutenção e Suporte em Informática",
"9": "Desenhista da Construção Civil",
"10": "Operador de computador",
"11": "Administração"
*/
