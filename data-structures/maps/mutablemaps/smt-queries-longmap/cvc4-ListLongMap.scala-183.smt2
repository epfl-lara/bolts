; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3676 () Bool)

(assert start!3676)

(declare-datatypes ((V!1215 0))(
  ( (V!1216 (val!548 Int)) )
))
(declare-datatypes ((ValueCell!322 0))(
  ( (ValueCellFull!322 (v!1633 V!1215)) (EmptyCell!322) )
))
(declare-datatypes ((array!1321 0))(
  ( (array!1322 (arr!623 (Array (_ BitVec 32) ValueCell!322)) (size!724 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1321)

(declare-fun b!25797 () Bool)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1323 0))(
  ( (array!1324 (arr!624 (Array (_ BitVec 32) (_ BitVec 64))) (size!725 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1323)

(declare-fun e!16689 () Bool)

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!25797 (= e!16689 (and (= (size!724 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!725 _keys!1833) (size!724 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011) (not (= (size!725 _keys!1833) (bvadd #b00000000000000000000000000000001 mask!2294)))))))

(declare-fun b!25798 () Bool)

(declare-fun e!16687 () Bool)

(declare-fun e!16691 () Bool)

(declare-fun mapRes!1066 () Bool)

(assert (=> b!25798 (= e!16687 (and e!16691 mapRes!1066))))

(declare-fun condMapEmpty!1066 () Bool)

(declare-fun mapDefault!1066 () ValueCell!322)

