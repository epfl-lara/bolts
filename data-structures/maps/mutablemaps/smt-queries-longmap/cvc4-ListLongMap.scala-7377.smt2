; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94042 () Bool)

(assert start!94042)

(declare-fun b_free!21443 () Bool)

(declare-fun b_next!21443 () Bool)

(assert (=> start!94042 (= b_free!21443 (not b_next!21443))))

(declare-fun tp!75759 () Bool)

(declare-fun b_and!34193 () Bool)

(assert (=> start!94042 (= tp!75759 b_and!34193)))

(declare-fun b!1063164 () Bool)

(declare-fun e!605783 () Bool)

(declare-fun e!605788 () Bool)

(declare-fun mapRes!39556 () Bool)

(assert (=> b!1063164 (= e!605783 (and e!605788 mapRes!39556))))

(declare-fun condMapEmpty!39556 () Bool)

(declare-datatypes ((V!38805 0))(
  ( (V!38806 (val!12677 Int)) )
))
(declare-datatypes ((ValueCell!11923 0))(
  ( (ValueCellFull!11923 (v!15289 V!38805)) (EmptyCell!11923) )
))
(declare-datatypes ((array!67482 0))(
  ( (array!67483 (arr!32443 (Array (_ BitVec 32) ValueCell!11923)) (size!32980 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67482)

(declare-fun mapDefault!39556 () ValueCell!11923)

