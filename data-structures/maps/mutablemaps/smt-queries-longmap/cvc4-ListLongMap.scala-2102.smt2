; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35792 () Bool)

(assert start!35792)

(declare-fun res!199738 () Bool)

(declare-fun e!220045 () Bool)

(assert (=> start!35792 (=> (not res!199738) (not e!220045))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35792 (= res!199738 (validMask!0 mask!1842))))

(assert (=> start!35792 e!220045))

(assert (=> start!35792 true))

(declare-datatypes ((V!11959 0))(
  ( (V!11960 (val!4163 Int)) )
))
(declare-datatypes ((ValueCell!3775 0))(
  ( (ValueCellFull!3775 (v!6353 V!11959)) (EmptyCell!3775) )
))
(declare-datatypes ((array!19995 0))(
  ( (array!19996 (arr!9488 (Array (_ BitVec 32) ValueCell!3775)) (size!9840 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19995)

(declare-fun e!220046 () Bool)

(declare-fun array_inv!6982 (array!19995) Bool)

(assert (=> start!35792 (and (array_inv!6982 _values!1208) e!220046)))

(declare-datatypes ((array!19997 0))(
  ( (array!19998 (arr!9489 (Array (_ BitVec 32) (_ BitVec 64))) (size!9841 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19997)

(declare-fun array_inv!6983 (array!19997) Bool)

(assert (=> start!35792 (array_inv!6983 _keys!1456)))

(declare-fun b!359241 () Bool)

(declare-fun res!199736 () Bool)

(assert (=> b!359241 (=> (not res!199736) (not e!220045))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!359241 (= res!199736 (and (= (size!9840 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9841 _keys!1456) (size!9840 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!13863 () Bool)

(declare-fun mapRes!13863 () Bool)

(assert (=> mapIsEmpty!13863 mapRes!13863))

(declare-fun mapNonEmpty!13863 () Bool)

(declare-fun tp!27930 () Bool)

(declare-fun e!220042 () Bool)

(assert (=> mapNonEmpty!13863 (= mapRes!13863 (and tp!27930 e!220042))))

(declare-fun mapKey!13863 () (_ BitVec 32))

(declare-fun mapRest!13863 () (Array (_ BitVec 32) ValueCell!3775))

(declare-fun mapValue!13863 () ValueCell!3775)

(assert (=> mapNonEmpty!13863 (= (arr!9488 _values!1208) (store mapRest!13863 mapKey!13863 mapValue!13863))))

(declare-fun b!359242 () Bool)

(declare-fun e!220043 () Bool)

(assert (=> b!359242 (= e!220046 (and e!220043 mapRes!13863))))

(declare-fun condMapEmpty!13863 () Bool)

(declare-fun mapDefault!13863 () ValueCell!3775)

