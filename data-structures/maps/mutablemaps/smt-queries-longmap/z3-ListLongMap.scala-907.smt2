; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20552 () Bool)

(assert start!20552)

(declare-fun b_free!5199 () Bool)

(declare-fun b_next!5199 () Bool)

(assert (=> start!20552 (= b_free!5199 (not b_next!5199))))

(declare-fun tp!18629 () Bool)

(declare-fun b_and!11963 () Bool)

(assert (=> start!20552 (= tp!18629 b_and!11963)))

(declare-fun res!98334 () Bool)

(declare-fun e!133622 () Bool)

(assert (=> start!20552 (=> (not res!98334) (not e!133622))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20552 (= res!98334 (validMask!0 mask!1149))))

(assert (=> start!20552 e!133622))

(declare-datatypes ((V!6387 0))(
  ( (V!6388 (val!2572 Int)) )
))
(declare-datatypes ((ValueCell!2184 0))(
  ( (ValueCellFull!2184 (v!4538 V!6387)) (EmptyCell!2184) )
))
(declare-datatypes ((array!9328 0))(
  ( (array!9329 (arr!4414 (Array (_ BitVec 32) ValueCell!2184)) (size!4739 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9328)

(declare-fun e!133619 () Bool)

(declare-fun array_inv!2907 (array!9328) Bool)

(assert (=> start!20552 (and (array_inv!2907 _values!649) e!133619)))

(assert (=> start!20552 true))

(declare-fun tp_is_empty!5055 () Bool)

(assert (=> start!20552 tp_is_empty!5055))

(declare-datatypes ((array!9330 0))(
  ( (array!9331 (arr!4415 (Array (_ BitVec 32) (_ BitVec 64))) (size!4740 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9330)

(declare-fun array_inv!2908 (array!9330) Bool)

(assert (=> start!20552 (array_inv!2908 _keys!825)))

(assert (=> start!20552 tp!18629))

(declare-fun b!204175 () Bool)

(declare-fun res!98338 () Bool)

(assert (=> b!204175 (=> (not res!98338) (not e!133622))))

(declare-datatypes ((List!2822 0))(
  ( (Nil!2819) (Cons!2818 (h!3460 (_ BitVec 64)) (t!7761 List!2822)) )
))
(declare-fun arrayNoDuplicates!0 (array!9330 (_ BitVec 32) List!2822) Bool)

(assert (=> b!204175 (= res!98338 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2819))))

(declare-fun b!204176 () Bool)

(declare-fun e!133623 () Bool)

(assert (=> b!204176 (= e!133623 tp_is_empty!5055)))

(declare-fun b!204177 () Bool)

(declare-fun res!98340 () Bool)

(assert (=> b!204177 (=> (not res!98340) (not e!133622))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!204177 (= res!98340 (= (select (arr!4415 _keys!825) i!601) k0!843))))

(declare-fun b!204178 () Bool)

(declare-fun res!98335 () Bool)

(assert (=> b!204178 (=> (not res!98335) (not e!133622))))

(assert (=> b!204178 (= res!98335 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4740 _keys!825))))))

(declare-fun b!204179 () Bool)

(declare-fun res!98339 () Bool)

(assert (=> b!204179 (=> (not res!98339) (not e!133622))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9330 (_ BitVec 32)) Bool)

(assert (=> b!204179 (= res!98339 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!204180 () Bool)

(declare-fun res!98333 () Bool)

(assert (=> b!204180 (=> (not res!98333) (not e!133622))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!204180 (= res!98333 (validKeyInArray!0 k0!843))))

(declare-fun b!204181 () Bool)

(declare-fun e!133620 () Bool)

(assert (=> b!204181 (= e!133620 true)))

(declare-datatypes ((tuple2!3898 0))(
  ( (tuple2!3899 (_1!1959 (_ BitVec 64)) (_2!1959 V!6387)) )
))
(declare-datatypes ((List!2823 0))(
  ( (Nil!2820) (Cons!2819 (h!3461 tuple2!3898) (t!7762 List!2823)) )
))
(declare-datatypes ((ListLongMap!2825 0))(
  ( (ListLongMap!2826 (toList!1428 List!2823)) )
))
(declare-fun lt!103426 () ListLongMap!2825)

(declare-fun lt!103421 () ListLongMap!2825)

(declare-fun lt!103422 () tuple2!3898)

(declare-fun +!445 (ListLongMap!2825 tuple2!3898) ListLongMap!2825)

(assert (=> b!204181 (= lt!103426 (+!445 lt!103421 lt!103422))))

(declare-fun lt!103419 () ListLongMap!2825)

(declare-fun v!520 () V!6387)

(declare-fun zeroValue!615 () V!6387)

(declare-datatypes ((Unit!6191 0))(
  ( (Unit!6192) )
))
(declare-fun lt!103420 () Unit!6191)

(declare-fun addCommutativeForDiffKeys!154 (ListLongMap!2825 (_ BitVec 64) V!6387 (_ BitVec 64) V!6387) Unit!6191)

(assert (=> b!204181 (= lt!103420 (addCommutativeForDiffKeys!154 lt!103419 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!204182 () Bool)

(declare-fun mapRes!8651 () Bool)

(assert (=> b!204182 (= e!133619 (and e!133623 mapRes!8651))))

(declare-fun condMapEmpty!8651 () Bool)

(declare-fun mapDefault!8651 () ValueCell!2184)

(assert (=> b!204182 (= condMapEmpty!8651 (= (arr!4414 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2184)) mapDefault!8651)))))

(declare-fun b!204183 () Bool)

(declare-fun e!133621 () Bool)

(assert (=> b!204183 (= e!133621 tp_is_empty!5055)))

(declare-fun b!204184 () Bool)

(declare-fun res!98341 () Bool)

(assert (=> b!204184 (=> (not res!98341) (not e!133622))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!204184 (= res!98341 (and (= (size!4739 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4740 _keys!825) (size!4739 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!8651 () Bool)

(declare-fun tp!18628 () Bool)

(assert (=> mapNonEmpty!8651 (= mapRes!8651 (and tp!18628 e!133621))))

(declare-fun mapValue!8651 () ValueCell!2184)

(declare-fun mapKey!8651 () (_ BitVec 32))

(declare-fun mapRest!8651 () (Array (_ BitVec 32) ValueCell!2184))

(assert (=> mapNonEmpty!8651 (= (arr!4414 _values!649) (store mapRest!8651 mapKey!8651 mapValue!8651))))

(declare-fun mapIsEmpty!8651 () Bool)

(assert (=> mapIsEmpty!8651 mapRes!8651))

(declare-fun b!204185 () Bool)

(declare-fun e!133618 () Bool)

(assert (=> b!204185 (= e!133622 (not e!133618))))

(declare-fun res!98337 () Bool)

(assert (=> b!204185 (=> res!98337 e!133618)))

(assert (=> b!204185 (= res!98337 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!103429 () ListLongMap!2825)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6387)

(declare-fun getCurrentListMap!997 (array!9330 array!9328 (_ BitVec 32) (_ BitVec 32) V!6387 V!6387 (_ BitVec 32) Int) ListLongMap!2825)

(assert (=> b!204185 (= lt!103429 (getCurrentListMap!997 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!103428 () ListLongMap!2825)

(declare-fun lt!103424 () array!9328)

(assert (=> b!204185 (= lt!103428 (getCurrentListMap!997 _keys!825 lt!103424 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!103423 () ListLongMap!2825)

(declare-fun lt!103418 () ListLongMap!2825)

(assert (=> b!204185 (and (= lt!103423 lt!103418) (= lt!103418 lt!103423))))

(assert (=> b!204185 (= lt!103418 (+!445 lt!103419 lt!103422))))

(assert (=> b!204185 (= lt!103422 (tuple2!3899 k0!843 v!520))))

(declare-fun lt!103427 () Unit!6191)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!110 (array!9330 array!9328 (_ BitVec 32) (_ BitVec 32) V!6387 V!6387 (_ BitVec 32) (_ BitVec 64) V!6387 (_ BitVec 32) Int) Unit!6191)

(assert (=> b!204185 (= lt!103427 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!110 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!368 (array!9330 array!9328 (_ BitVec 32) (_ BitVec 32) V!6387 V!6387 (_ BitVec 32) Int) ListLongMap!2825)

(assert (=> b!204185 (= lt!103423 (getCurrentListMapNoExtraKeys!368 _keys!825 lt!103424 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!204185 (= lt!103424 (array!9329 (store (arr!4414 _values!649) i!601 (ValueCellFull!2184 v!520)) (size!4739 _values!649)))))

(assert (=> b!204185 (= lt!103419 (getCurrentListMapNoExtraKeys!368 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!204186 () Bool)

(assert (=> b!204186 (= e!133618 e!133620)))

(declare-fun res!98336 () Bool)

(assert (=> b!204186 (=> res!98336 e!133620)))

(assert (=> b!204186 (= res!98336 (= k0!843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!204186 (= lt!103428 lt!103426)))

(declare-fun lt!103425 () tuple2!3898)

(assert (=> b!204186 (= lt!103426 (+!445 lt!103418 lt!103425))))

(assert (=> b!204186 (= lt!103429 lt!103421)))

(assert (=> b!204186 (= lt!103421 (+!445 lt!103419 lt!103425))))

(assert (=> b!204186 (= lt!103428 (+!445 lt!103423 lt!103425))))

(assert (=> b!204186 (= lt!103425 (tuple2!3899 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(assert (= (and start!20552 res!98334) b!204184))

(assert (= (and b!204184 res!98341) b!204179))

(assert (= (and b!204179 res!98339) b!204175))

(assert (= (and b!204175 res!98338) b!204178))

(assert (= (and b!204178 res!98335) b!204180))

(assert (= (and b!204180 res!98333) b!204177))

(assert (= (and b!204177 res!98340) b!204185))

(assert (= (and b!204185 (not res!98337)) b!204186))

(assert (= (and b!204186 (not res!98336)) b!204181))

(assert (= (and b!204182 condMapEmpty!8651) mapIsEmpty!8651))

(assert (= (and b!204182 (not condMapEmpty!8651)) mapNonEmpty!8651))

(get-info :version)

(assert (= (and mapNonEmpty!8651 ((_ is ValueCellFull!2184) mapValue!8651)) b!204183))

(assert (= (and b!204182 ((_ is ValueCellFull!2184) mapDefault!8651)) b!204176))

(assert (= start!20552 b!204182))

(declare-fun m!231709 () Bool)

(assert (=> b!204175 m!231709))

(declare-fun m!231711 () Bool)

(assert (=> b!204180 m!231711))

(declare-fun m!231713 () Bool)

(assert (=> mapNonEmpty!8651 m!231713))

(declare-fun m!231715 () Bool)

(assert (=> start!20552 m!231715))

(declare-fun m!231717 () Bool)

(assert (=> start!20552 m!231717))

(declare-fun m!231719 () Bool)

(assert (=> start!20552 m!231719))

(declare-fun m!231721 () Bool)

(assert (=> b!204181 m!231721))

(declare-fun m!231723 () Bool)

(assert (=> b!204181 m!231723))

(declare-fun m!231725 () Bool)

(assert (=> b!204186 m!231725))

(declare-fun m!231727 () Bool)

(assert (=> b!204186 m!231727))

(declare-fun m!231729 () Bool)

(assert (=> b!204186 m!231729))

(declare-fun m!231731 () Bool)

(assert (=> b!204177 m!231731))

(declare-fun m!231733 () Bool)

(assert (=> b!204179 m!231733))

(declare-fun m!231735 () Bool)

(assert (=> b!204185 m!231735))

(declare-fun m!231737 () Bool)

(assert (=> b!204185 m!231737))

(declare-fun m!231739 () Bool)

(assert (=> b!204185 m!231739))

(declare-fun m!231741 () Bool)

(assert (=> b!204185 m!231741))

(declare-fun m!231743 () Bool)

(assert (=> b!204185 m!231743))

(declare-fun m!231745 () Bool)

(assert (=> b!204185 m!231745))

(declare-fun m!231747 () Bool)

(assert (=> b!204185 m!231747))

(check-sat (not start!20552) (not b!204175) (not mapNonEmpty!8651) (not b!204181) (not b!204179) tp_is_empty!5055 (not b_next!5199) (not b!204185) (not b!204186) (not b!204180) b_and!11963)
(check-sat b_and!11963 (not b_next!5199))
