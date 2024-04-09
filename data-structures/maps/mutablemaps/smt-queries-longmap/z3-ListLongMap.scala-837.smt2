; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20132 () Bool)

(assert start!20132)

(declare-fun b_free!4779 () Bool)

(declare-fun b_next!4779 () Bool)

(assert (=> start!20132 (= b_free!4779 (not b_next!4779))))

(declare-fun tp!17368 () Bool)

(declare-fun b_and!11543 () Bool)

(assert (=> start!20132 (= tp!17368 b_and!11543)))

(declare-fun b!197190 () Bool)

(declare-fun e!129802 () Bool)

(declare-fun tp_is_empty!4635 () Bool)

(assert (=> b!197190 (= e!129802 tp_is_empty!4635)))

(declare-fun b!197192 () Bool)

(declare-fun res!93243 () Bool)

(declare-fun e!129801 () Bool)

(assert (=> b!197192 (=> (not res!93243) (not e!129801))))

(declare-datatypes ((array!8522 0))(
  ( (array!8523 (arr!4011 (Array (_ BitVec 32) (_ BitVec 64))) (size!4336 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8522)

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!197192 (= res!93243 (= (select (arr!4011 _keys!825) i!601) k0!843))))

(declare-fun b!197193 () Bool)

(declare-fun res!93239 () Bool)

(assert (=> b!197193 (=> (not res!93239) (not e!129801))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8522 (_ BitVec 32)) Bool)

(assert (=> b!197193 (= res!93239 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!197194 () Bool)

(declare-fun e!129803 () Bool)

(declare-fun mapRes!8021 () Bool)

(assert (=> b!197194 (= e!129803 (and e!129802 mapRes!8021))))

(declare-fun condMapEmpty!8021 () Bool)

(declare-datatypes ((V!5827 0))(
  ( (V!5828 (val!2362 Int)) )
))
(declare-datatypes ((ValueCell!1974 0))(
  ( (ValueCellFull!1974 (v!4328 V!5827)) (EmptyCell!1974) )
))
(declare-datatypes ((array!8524 0))(
  ( (array!8525 (arr!4012 (Array (_ BitVec 32) ValueCell!1974)) (size!4337 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8524)

(declare-fun mapDefault!8021 () ValueCell!1974)

(assert (=> b!197194 (= condMapEmpty!8021 (= (arr!4012 _values!649) ((as const (Array (_ BitVec 32) ValueCell!1974)) mapDefault!8021)))))

(declare-fun b!197195 () Bool)

(declare-fun res!93241 () Bool)

(assert (=> b!197195 (=> (not res!93241) (not e!129801))))

(declare-datatypes ((List!2524 0))(
  ( (Nil!2521) (Cons!2520 (h!3162 (_ BitVec 64)) (t!7463 List!2524)) )
))
(declare-fun arrayNoDuplicates!0 (array!8522 (_ BitVec 32) List!2524) Bool)

(assert (=> b!197195 (= res!93241 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2521))))

(declare-fun mapIsEmpty!8021 () Bool)

(assert (=> mapIsEmpty!8021 mapRes!8021))

(declare-fun mapNonEmpty!8021 () Bool)

(declare-fun tp!17369 () Bool)

(declare-fun e!129804 () Bool)

(assert (=> mapNonEmpty!8021 (= mapRes!8021 (and tp!17369 e!129804))))

(declare-fun mapRest!8021 () (Array (_ BitVec 32) ValueCell!1974))

(declare-fun mapValue!8021 () ValueCell!1974)

(declare-fun mapKey!8021 () (_ BitVec 32))

(assert (=> mapNonEmpty!8021 (= (arr!4012 _values!649) (store mapRest!8021 mapKey!8021 mapValue!8021))))

(declare-fun b!197196 () Bool)

(declare-fun res!93242 () Bool)

(assert (=> b!197196 (=> (not res!93242) (not e!129801))))

(assert (=> b!197196 (= res!93242 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4336 _keys!825))))))

(declare-fun b!197197 () Bool)

(declare-fun res!93238 () Bool)

(assert (=> b!197197 (=> (not res!93238) (not e!129801))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!197197 (= res!93238 (validKeyInArray!0 k0!843))))

(declare-fun res!93240 () Bool)

(assert (=> start!20132 (=> (not res!93240) (not e!129801))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20132 (= res!93240 (validMask!0 mask!1149))))

(assert (=> start!20132 e!129801))

(declare-fun array_inv!2609 (array!8524) Bool)

(assert (=> start!20132 (and (array_inv!2609 _values!649) e!129803)))

(assert (=> start!20132 true))

(assert (=> start!20132 tp_is_empty!4635))

(declare-fun array_inv!2610 (array!8522) Bool)

(assert (=> start!20132 (array_inv!2610 _keys!825)))

(assert (=> start!20132 tp!17368))

(declare-fun b!197191 () Bool)

(assert (=> b!197191 (= e!129804 tp_is_empty!4635)))

(declare-fun b!197198 () Bool)

(declare-fun res!93244 () Bool)

(assert (=> b!197198 (=> (not res!93244) (not e!129801))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!197198 (= res!93244 (and (= (size!4337 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4336 _keys!825) (size!4337 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!197199 () Bool)

(assert (=> b!197199 (= e!129801 false)))

(declare-datatypes ((tuple2!3588 0))(
  ( (tuple2!3589 (_1!1804 (_ BitVec 64)) (_2!1804 V!5827)) )
))
(declare-datatypes ((List!2525 0))(
  ( (Nil!2522) (Cons!2521 (h!3163 tuple2!3588) (t!7464 List!2525)) )
))
(declare-datatypes ((ListLongMap!2515 0))(
  ( (ListLongMap!2516 (toList!1273 List!2525)) )
))
(declare-fun lt!97720 () ListLongMap!2515)

(declare-fun zeroValue!615 () V!5827)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!5827)

(declare-fun getCurrentListMapNoExtraKeys!230 (array!8522 array!8524 (_ BitVec 32) (_ BitVec 32) V!5827 V!5827 (_ BitVec 32) Int) ListLongMap!2515)

(assert (=> b!197199 (= lt!97720 (getCurrentListMapNoExtraKeys!230 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (= (and start!20132 res!93240) b!197198))

(assert (= (and b!197198 res!93244) b!197193))

(assert (= (and b!197193 res!93239) b!197195))

(assert (= (and b!197195 res!93241) b!197196))

(assert (= (and b!197196 res!93242) b!197197))

(assert (= (and b!197197 res!93238) b!197192))

(assert (= (and b!197192 res!93243) b!197199))

(assert (= (and b!197194 condMapEmpty!8021) mapIsEmpty!8021))

(assert (= (and b!197194 (not condMapEmpty!8021)) mapNonEmpty!8021))

(get-info :version)

(assert (= (and mapNonEmpty!8021 ((_ is ValueCellFull!1974) mapValue!8021)) b!197191))

(assert (= (and b!197194 ((_ is ValueCellFull!1974) mapDefault!8021)) b!197190))

(assert (= start!20132 b!197194))

(declare-fun m!224175 () Bool)

(assert (=> start!20132 m!224175))

(declare-fun m!224177 () Bool)

(assert (=> start!20132 m!224177))

(declare-fun m!224179 () Bool)

(assert (=> start!20132 m!224179))

(declare-fun m!224181 () Bool)

(assert (=> b!197192 m!224181))

(declare-fun m!224183 () Bool)

(assert (=> b!197197 m!224183))

(declare-fun m!224185 () Bool)

(assert (=> b!197199 m!224185))

(declare-fun m!224187 () Bool)

(assert (=> b!197193 m!224187))

(declare-fun m!224189 () Bool)

(assert (=> b!197195 m!224189))

(declare-fun m!224191 () Bool)

(assert (=> mapNonEmpty!8021 m!224191))

(check-sat (not b!197195) (not start!20132) (not b_next!4779) (not b!197197) b_and!11543 (not b!197199) tp_is_empty!4635 (not b!197193) (not mapNonEmpty!8021))
(check-sat b_and!11543 (not b_next!4779))
