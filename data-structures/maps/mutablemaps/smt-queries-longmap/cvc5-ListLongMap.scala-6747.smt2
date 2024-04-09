; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84588 () Bool)

(assert start!84588)

(declare-fun b_free!20041 () Bool)

(declare-fun b_next!20041 () Bool)

(assert (=> start!84588 (= b_free!20041 (not b_next!20041))))

(declare-fun tp!69911 () Bool)

(declare-fun b_and!32169 () Bool)

(assert (=> start!84588 (= tp!69911 b_and!32169)))

(declare-fun b!988897 () Bool)

(declare-fun e!557646 () Bool)

(declare-fun e!557645 () Bool)

(declare-fun mapRes!36927 () Bool)

(assert (=> b!988897 (= e!557646 (and e!557645 mapRes!36927))))

(declare-fun condMapEmpty!36927 () Bool)

(declare-datatypes ((V!35993 0))(
  ( (V!35994 (val!11679 Int)) )
))
(declare-datatypes ((ValueCell!11147 0))(
  ( (ValueCellFull!11147 (v!14246 V!35993)) (EmptyCell!11147) )
))
(declare-datatypes ((array!62463 0))(
  ( (array!62464 (arr!30081 (Array (_ BitVec 32) ValueCell!11147)) (size!30561 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62463)

(declare-fun mapDefault!36927 () ValueCell!11147)

