; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20822 () Bool)

(assert start!20822)

(declare-fun b_free!5463 () Bool)

(declare-fun b_next!5463 () Bool)

(assert (=> start!20822 (= b_free!5463 (not b_next!5463))))

(declare-fun tp!19430 () Bool)

(declare-fun b_and!12227 () Bool)

(assert (=> start!20822 (= tp!19430 b_and!12227)))

(declare-fun b!208566 () Bool)

(declare-fun e!136015 () Bool)

(declare-fun tp_is_empty!5325 () Bool)

(assert (=> b!208566 (= e!136015 tp_is_empty!5325)))

(declare-fun b!208567 () Bool)

(declare-fun res!101510 () Bool)

(declare-fun e!136012 () Bool)

(assert (=> b!208567 (=> (not res!101510) (not e!136012))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!208567 (= res!101510 (validKeyInArray!0 k0!843))))

(declare-fun b!208568 () Bool)

(declare-fun e!136011 () Bool)

(declare-fun e!136013 () Bool)

(declare-fun mapRes!9056 () Bool)

(assert (=> b!208568 (= e!136011 (and e!136013 mapRes!9056))))

(declare-fun condMapEmpty!9056 () Bool)

(declare-datatypes ((V!6747 0))(
  ( (V!6748 (val!2707 Int)) )
))
(declare-datatypes ((ValueCell!2319 0))(
  ( (ValueCellFull!2319 (v!4673 V!6747)) (EmptyCell!2319) )
))
(declare-datatypes ((array!9852 0))(
  ( (array!9853 (arr!4676 (Array (_ BitVec 32) ValueCell!2319)) (size!5001 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9852)

(declare-fun mapDefault!9056 () ValueCell!2319)

(assert (=> b!208568 (= condMapEmpty!9056 (= (arr!4676 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2319)) mapDefault!9056)))))

(declare-fun b!208569 () Bool)

(declare-fun res!101513 () Bool)

(assert (=> b!208569 (=> (not res!101513) (not e!136012))))

(declare-datatypes ((array!9854 0))(
  ( (array!9855 (arr!4677 (Array (_ BitVec 32) (_ BitVec 64))) (size!5002 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9854)

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!208569 (= res!101513 (= (select (arr!4677 _keys!825) i!601) k0!843))))

(declare-fun b!208570 () Bool)

(assert (=> b!208570 (= e!136012 false)))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-datatypes ((tuple2!4096 0))(
  ( (tuple2!4097 (_1!2058 (_ BitVec 64)) (_2!2058 V!6747)) )
))
(declare-datatypes ((List!3016 0))(
  ( (Nil!3013) (Cons!3012 (h!3654 tuple2!4096) (t!7955 List!3016)) )
))
(declare-datatypes ((ListLongMap!3023 0))(
  ( (ListLongMap!3024 (toList!1527 List!3016)) )
))
(declare-fun lt!106843 () ListLongMap!3023)

(declare-fun v!520 () V!6747)

(declare-fun zeroValue!615 () V!6747)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6747)

(declare-fun getCurrentListMapNoExtraKeys!460 (array!9854 array!9852 (_ BitVec 32) (_ BitVec 32) V!6747 V!6747 (_ BitVec 32) Int) ListLongMap!3023)

(assert (=> b!208570 (= lt!106843 (getCurrentListMapNoExtraKeys!460 _keys!825 (array!9853 (store (arr!4676 _values!649) i!601 (ValueCellFull!2319 v!520)) (size!5001 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106842 () ListLongMap!3023)

(assert (=> b!208570 (= lt!106842 (getCurrentListMapNoExtraKeys!460 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun res!101514 () Bool)

(assert (=> start!20822 (=> (not res!101514) (not e!136012))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20822 (= res!101514 (validMask!0 mask!1149))))

(assert (=> start!20822 e!136012))

(declare-fun array_inv!3093 (array!9852) Bool)

(assert (=> start!20822 (and (array_inv!3093 _values!649) e!136011)))

(assert (=> start!20822 true))

(assert (=> start!20822 tp_is_empty!5325))

(declare-fun array_inv!3094 (array!9854) Bool)

(assert (=> start!20822 (array_inv!3094 _keys!825)))

(assert (=> start!20822 tp!19430))

(declare-fun b!208571 () Bool)

(assert (=> b!208571 (= e!136013 tp_is_empty!5325)))

(declare-fun b!208572 () Bool)

(declare-fun res!101511 () Bool)

(assert (=> b!208572 (=> (not res!101511) (not e!136012))))

(assert (=> b!208572 (= res!101511 (and (= (size!5001 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5002 _keys!825) (size!5001 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!208573 () Bool)

(declare-fun res!101515 () Bool)

(assert (=> b!208573 (=> (not res!101515) (not e!136012))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9854 (_ BitVec 32)) Bool)

(assert (=> b!208573 (= res!101515 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapIsEmpty!9056 () Bool)

(assert (=> mapIsEmpty!9056 mapRes!9056))

(declare-fun mapNonEmpty!9056 () Bool)

(declare-fun tp!19429 () Bool)

(assert (=> mapNonEmpty!9056 (= mapRes!9056 (and tp!19429 e!136015))))

(declare-fun mapValue!9056 () ValueCell!2319)

(declare-fun mapKey!9056 () (_ BitVec 32))

(declare-fun mapRest!9056 () (Array (_ BitVec 32) ValueCell!2319))

(assert (=> mapNonEmpty!9056 (= (arr!4676 _values!649) (store mapRest!9056 mapKey!9056 mapValue!9056))))

(declare-fun b!208574 () Bool)

(declare-fun res!101512 () Bool)

(assert (=> b!208574 (=> (not res!101512) (not e!136012))))

(assert (=> b!208574 (= res!101512 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5002 _keys!825))))))

(declare-fun b!208575 () Bool)

(declare-fun res!101509 () Bool)

(assert (=> b!208575 (=> (not res!101509) (not e!136012))))

(declare-datatypes ((List!3017 0))(
  ( (Nil!3014) (Cons!3013 (h!3655 (_ BitVec 64)) (t!7956 List!3017)) )
))
(declare-fun arrayNoDuplicates!0 (array!9854 (_ BitVec 32) List!3017) Bool)

(assert (=> b!208575 (= res!101509 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3014))))

(assert (= (and start!20822 res!101514) b!208572))

(assert (= (and b!208572 res!101511) b!208573))

(assert (= (and b!208573 res!101515) b!208575))

(assert (= (and b!208575 res!101509) b!208574))

(assert (= (and b!208574 res!101512) b!208567))

(assert (= (and b!208567 res!101510) b!208569))

(assert (= (and b!208569 res!101513) b!208570))

(assert (= (and b!208568 condMapEmpty!9056) mapIsEmpty!9056))

(assert (= (and b!208568 (not condMapEmpty!9056)) mapNonEmpty!9056))

(get-info :version)

(assert (= (and mapNonEmpty!9056 ((_ is ValueCellFull!2319) mapValue!9056)) b!208566))

(assert (= (and b!208568 ((_ is ValueCellFull!2319) mapDefault!9056)) b!208571))

(assert (= start!20822 b!208568))

(declare-fun m!236173 () Bool)

(assert (=> b!208573 m!236173))

(declare-fun m!236175 () Bool)

(assert (=> b!208567 m!236175))

(declare-fun m!236177 () Bool)

(assert (=> b!208575 m!236177))

(declare-fun m!236179 () Bool)

(assert (=> mapNonEmpty!9056 m!236179))

(declare-fun m!236181 () Bool)

(assert (=> b!208569 m!236181))

(declare-fun m!236183 () Bool)

(assert (=> start!20822 m!236183))

(declare-fun m!236185 () Bool)

(assert (=> start!20822 m!236185))

(declare-fun m!236187 () Bool)

(assert (=> start!20822 m!236187))

(declare-fun m!236189 () Bool)

(assert (=> b!208570 m!236189))

(declare-fun m!236191 () Bool)

(assert (=> b!208570 m!236191))

(declare-fun m!236193 () Bool)

(assert (=> b!208570 m!236193))

(check-sat (not b!208570) (not b_next!5463) tp_is_empty!5325 (not start!20822) (not b!208567) (not mapNonEmpty!9056) b_and!12227 (not b!208573) (not b!208575))
(check-sat b_and!12227 (not b_next!5463))
