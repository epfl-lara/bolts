; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84314 () Bool)

(assert start!84314)

(declare-fun res!659795 () Bool)

(declare-fun e!555826 () Bool)

(assert (=> start!84314 (=> (not res!659795) (not e!555826))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84314 (= res!659795 (validMask!0 mask!1948))))

(assert (=> start!84314 e!555826))

(assert (=> start!84314 true))

(declare-datatypes ((V!35769 0))(
  ( (V!35770 (val!11595 Int)) )
))
(declare-datatypes ((ValueCell!11063 0))(
  ( (ValueCellFull!11063 (v!14157 V!35769)) (EmptyCell!11063) )
))
(declare-datatypes ((array!62137 0))(
  ( (array!62138 (arr!29922 (Array (_ BitVec 32) ValueCell!11063)) (size!30402 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62137)

(declare-fun e!555828 () Bool)

(declare-fun array_inv!22993 (array!62137) Bool)

(assert (=> start!84314 (and (array_inv!22993 _values!1278) e!555828)))

(declare-datatypes ((array!62139 0))(
  ( (array!62140 (arr!29923 (Array (_ BitVec 32) (_ BitVec 64))) (size!30403 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62139)

(declare-fun array_inv!22994 (array!62139) Bool)

(assert (=> start!84314 (array_inv!22994 _keys!1544)))

(declare-fun b!985897 () Bool)

(declare-fun e!555829 () Bool)

(declare-fun tp_is_empty!23089 () Bool)

(assert (=> b!985897 (= e!555829 tp_is_empty!23089)))

(declare-fun mapIsEmpty!36662 () Bool)

(declare-fun mapRes!36662 () Bool)

(assert (=> mapIsEmpty!36662 mapRes!36662))

(declare-fun b!985898 () Bool)

(declare-fun res!659796 () Bool)

(assert (=> b!985898 (=> (not res!659796) (not e!555826))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!985898 (= res!659796 (and (= (size!30402 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30403 _keys!1544) (size!30402 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!36662 () Bool)

(declare-fun tp!69518 () Bool)

(declare-fun e!555827 () Bool)

(assert (=> mapNonEmpty!36662 (= mapRes!36662 (and tp!69518 e!555827))))

(declare-fun mapRest!36662 () (Array (_ BitVec 32) ValueCell!11063))

(declare-fun mapKey!36662 () (_ BitVec 32))

(declare-fun mapValue!36662 () ValueCell!11063)

(assert (=> mapNonEmpty!36662 (= (arr!29922 _values!1278) (store mapRest!36662 mapKey!36662 mapValue!36662))))

(declare-fun b!985899 () Bool)

(declare-fun res!659794 () Bool)

(assert (=> b!985899 (=> (not res!659794) (not e!555826))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62139 (_ BitVec 32)) Bool)

(assert (=> b!985899 (= res!659794 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!985900 () Bool)

(assert (=> b!985900 (= e!555828 (and e!555829 mapRes!36662))))

(declare-fun condMapEmpty!36662 () Bool)

(declare-fun mapDefault!36662 () ValueCell!11063)

