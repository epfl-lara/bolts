; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20100 () Bool)

(assert start!20100)

(declare-fun b_free!4747 () Bool)

(declare-fun b_next!4747 () Bool)

(assert (=> start!20100 (= b_free!4747 (not b_next!4747))))

(declare-fun tp!17272 () Bool)

(declare-fun b_and!11511 () Bool)

(assert (=> start!20100 (= tp!17272 b_and!11511)))

(declare-fun mapNonEmpty!7973 () Bool)

(declare-fun mapRes!7973 () Bool)

(declare-fun tp!17273 () Bool)

(declare-fun e!129561 () Bool)

(assert (=> mapNonEmpty!7973 (= mapRes!7973 (and tp!17273 e!129561))))

(declare-fun mapKey!7973 () (_ BitVec 32))

(declare-datatypes ((V!5785 0))(
  ( (V!5786 (val!2346 Int)) )
))
(declare-datatypes ((ValueCell!1958 0))(
  ( (ValueCellFull!1958 (v!4312 V!5785)) (EmptyCell!1958) )
))
(declare-datatypes ((array!8462 0))(
  ( (array!8463 (arr!3981 (Array (_ BitVec 32) ValueCell!1958)) (size!4306 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8462)

(declare-fun mapRest!7973 () (Array (_ BitVec 32) ValueCell!1958))

(declare-fun mapValue!7973 () ValueCell!1958)

(assert (=> mapNonEmpty!7973 (= (arr!3981 _values!649) (store mapRest!7973 mapKey!7973 mapValue!7973))))

(declare-fun b!196710 () Bool)

(declare-fun res!92903 () Bool)

(declare-fun e!129563 () Bool)

(assert (=> b!196710 (=> (not res!92903) (not e!129563))))

(declare-datatypes ((array!8464 0))(
  ( (array!8465 (arr!3982 (Array (_ BitVec 32) (_ BitVec 64))) (size!4307 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8464)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!196710 (= res!92903 (= (select (arr!3982 _keys!825) i!601) k!843))))

(declare-fun b!196711 () Bool)

(assert (=> b!196711 (= e!129563 false)))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-datatypes ((tuple2!3570 0))(
  ( (tuple2!3571 (_1!1795 (_ BitVec 64)) (_2!1795 V!5785)) )
))
(declare-datatypes ((List!2506 0))(
  ( (Nil!2503) (Cons!2502 (h!3144 tuple2!3570) (t!7445 List!2506)) )
))
(declare-datatypes ((ListLongMap!2497 0))(
  ( (ListLongMap!2498 (toList!1264 List!2506)) )
))
(declare-fun lt!97672 () ListLongMap!2497)

(declare-fun zeroValue!615 () V!5785)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!5785)

(declare-fun getCurrentListMapNoExtraKeys!221 (array!8464 array!8462 (_ BitVec 32) (_ BitVec 32) V!5785 V!5785 (_ BitVec 32) Int) ListLongMap!2497)

(assert (=> b!196711 (= lt!97672 (getCurrentListMapNoExtraKeys!221 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!196712 () Bool)

(declare-fun res!92905 () Bool)

(assert (=> b!196712 (=> (not res!92905) (not e!129563))))

(declare-datatypes ((List!2507 0))(
  ( (Nil!2504) (Cons!2503 (h!3145 (_ BitVec 64)) (t!7446 List!2507)) )
))
(declare-fun arrayNoDuplicates!0 (array!8464 (_ BitVec 32) List!2507) Bool)

(assert (=> b!196712 (= res!92905 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2504))))

(declare-fun b!196713 () Bool)

(declare-fun res!92907 () Bool)

(assert (=> b!196713 (=> (not res!92907) (not e!129563))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8464 (_ BitVec 32)) Bool)

(assert (=> b!196713 (= res!92907 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!196714 () Bool)

(declare-fun res!92906 () Bool)

(assert (=> b!196714 (=> (not res!92906) (not e!129563))))

(assert (=> b!196714 (= res!92906 (and (= (size!4306 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4307 _keys!825) (size!4306 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun res!92902 () Bool)

(assert (=> start!20100 (=> (not res!92902) (not e!129563))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20100 (= res!92902 (validMask!0 mask!1149))))

(assert (=> start!20100 e!129563))

(declare-fun e!129564 () Bool)

(declare-fun array_inv!2587 (array!8462) Bool)

(assert (=> start!20100 (and (array_inv!2587 _values!649) e!129564)))

(assert (=> start!20100 true))

(declare-fun tp_is_empty!4603 () Bool)

(assert (=> start!20100 tp_is_empty!4603))

(declare-fun array_inv!2588 (array!8464) Bool)

(assert (=> start!20100 (array_inv!2588 _keys!825)))

(assert (=> start!20100 tp!17272))

(declare-fun b!196715 () Bool)

(assert (=> b!196715 (= e!129561 tp_is_empty!4603)))

(declare-fun b!196716 () Bool)

(declare-fun res!92904 () Bool)

(assert (=> b!196716 (=> (not res!92904) (not e!129563))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!196716 (= res!92904 (validKeyInArray!0 k!843))))

(declare-fun b!196717 () Bool)

(declare-fun e!129565 () Bool)

(assert (=> b!196717 (= e!129564 (and e!129565 mapRes!7973))))

(declare-fun condMapEmpty!7973 () Bool)

(declare-fun mapDefault!7973 () ValueCell!1958)

