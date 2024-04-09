; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84306 () Bool)

(assert start!84306)

(declare-fun b!985825 () Bool)

(declare-fun res!659759 () Bool)

(declare-fun e!555767 () Bool)

(assert (=> b!985825 (=> (not res!659759) (not e!555767))))

(declare-datatypes ((array!62123 0))(
  ( (array!62124 (arr!29915 (Array (_ BitVec 32) (_ BitVec 64))) (size!30395 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62123)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62123 (_ BitVec 32)) Bool)

(assert (=> b!985825 (= res!659759 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapIsEmpty!36650 () Bool)

(declare-fun mapRes!36650 () Bool)

(assert (=> mapIsEmpty!36650 mapRes!36650))

(declare-fun res!659760 () Bool)

(assert (=> start!84306 (=> (not res!659760) (not e!555767))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84306 (= res!659760 (validMask!0 mask!1948))))

(assert (=> start!84306 e!555767))

(assert (=> start!84306 true))

(declare-datatypes ((V!35757 0))(
  ( (V!35758 (val!11591 Int)) )
))
(declare-datatypes ((ValueCell!11059 0))(
  ( (ValueCellFull!11059 (v!14153 V!35757)) (EmptyCell!11059) )
))
(declare-datatypes ((array!62125 0))(
  ( (array!62126 (arr!29916 (Array (_ BitVec 32) ValueCell!11059)) (size!30396 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62125)

(declare-fun e!555770 () Bool)

(declare-fun array_inv!22989 (array!62125) Bool)

(assert (=> start!84306 (and (array_inv!22989 _values!1278) e!555770)))

(declare-fun array_inv!22990 (array!62123) Bool)

(assert (=> start!84306 (array_inv!22990 _keys!1544)))

(declare-fun mapNonEmpty!36650 () Bool)

(declare-fun tp!69506 () Bool)

(declare-fun e!555768 () Bool)

(assert (=> mapNonEmpty!36650 (= mapRes!36650 (and tp!69506 e!555768))))

(declare-fun mapKey!36650 () (_ BitVec 32))

(declare-fun mapRest!36650 () (Array (_ BitVec 32) ValueCell!11059))

(declare-fun mapValue!36650 () ValueCell!11059)

(assert (=> mapNonEmpty!36650 (= (arr!29916 _values!1278) (store mapRest!36650 mapKey!36650 mapValue!36650))))

(declare-fun b!985826 () Bool)

(assert (=> b!985826 (= e!555767 false)))

(declare-fun lt!437362 () Bool)

(declare-datatypes ((List!20842 0))(
  ( (Nil!20839) (Cons!20838 (h!22000 (_ BitVec 64)) (t!29749 List!20842)) )
))
(declare-fun arrayNoDuplicates!0 (array!62123 (_ BitVec 32) List!20842) Bool)

(assert (=> b!985826 (= lt!437362 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20839))))

(declare-fun b!985827 () Bool)

(declare-fun e!555769 () Bool)

(declare-fun tp_is_empty!23081 () Bool)

(assert (=> b!985827 (= e!555769 tp_is_empty!23081)))

(declare-fun b!985828 () Bool)

(assert (=> b!985828 (= e!555768 tp_is_empty!23081)))

(declare-fun b!985829 () Bool)

(declare-fun res!659758 () Bool)

(assert (=> b!985829 (=> (not res!659758) (not e!555767))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!985829 (= res!659758 (and (= (size!30396 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30395 _keys!1544) (size!30396 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!985830 () Bool)

(assert (=> b!985830 (= e!555770 (and e!555769 mapRes!36650))))

(declare-fun condMapEmpty!36650 () Bool)

(declare-fun mapDefault!36650 () ValueCell!11059)

