; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94162 () Bool)

(assert start!94162)

(declare-fun b_free!21527 () Bool)

(declare-fun b_next!21527 () Bool)

(assert (=> start!94162 (= b_free!21527 (not b_next!21527))))

(declare-fun tp!76016 () Bool)

(declare-fun b_and!34295 () Bool)

(assert (=> start!94162 (= tp!76016 b_and!34295)))

(declare-fun b!1064370 () Bool)

(declare-fun e!606654 () Bool)

(declare-fun e!606651 () Bool)

(declare-fun mapRes!39688 () Bool)

(assert (=> b!1064370 (= e!606654 (and e!606651 mapRes!39688))))

(declare-fun condMapEmpty!39688 () Bool)

(declare-datatypes ((V!38917 0))(
  ( (V!38918 (val!12719 Int)) )
))
(declare-datatypes ((ValueCell!11965 0))(
  ( (ValueCellFull!11965 (v!15332 V!38917)) (EmptyCell!11965) )
))
(declare-datatypes ((array!67640 0))(
  ( (array!67641 (arr!32520 (Array (_ BitVec 32) ValueCell!11965)) (size!33057 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67640)

(declare-fun mapDefault!39688 () ValueCell!11965)

