; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78624 () Bool)

(assert start!78624)

(declare-fun b_free!16809 () Bool)

(declare-fun b_next!16809 () Bool)

(assert (=> start!78624 (= b_free!16809 (not b_next!16809))))

(declare-fun tp!58869 () Bool)

(declare-fun b_and!27449 () Bool)

(assert (=> start!78624 (= tp!58869 b_and!27449)))

(declare-fun b!916051 () Bool)

(declare-fun res!617676 () Bool)

(declare-fun e!514239 () Bool)

(assert (=> b!916051 (=> (not res!617676) (not e!514239))))

(declare-datatypes ((array!54636 0))(
  ( (array!54637 (arr!26259 (Array (_ BitVec 32) (_ BitVec 64))) (size!26719 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54636)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54636 (_ BitVec 32)) Bool)

(assert (=> b!916051 (= res!617676 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapIsEmpty!30732 () Bool)

(declare-fun mapRes!30732 () Bool)

(assert (=> mapIsEmpty!30732 mapRes!30732))

(declare-fun b!916052 () Bool)

(declare-fun e!514235 () Bool)

(declare-fun tp_is_empty!19317 () Bool)

(assert (=> b!916052 (= e!514235 tp_is_empty!19317)))

(declare-fun b!916053 () Bool)

(declare-fun e!514237 () Bool)

(assert (=> b!916053 (= e!514237 tp_is_empty!19317)))

(declare-fun b!916054 () Bool)

(declare-fun res!617674 () Bool)

(assert (=> b!916054 (=> (not res!617674) (not e!514239))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!916054 (= res!617674 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26719 _keys!1487))))))

(declare-fun b!916055 () Bool)

(assert (=> b!916055 (= e!514239 false)))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!30721 0))(
  ( (V!30722 (val!9709 Int)) )
))
(declare-datatypes ((ValueCell!9177 0))(
  ( (ValueCellFull!9177 (v!12227 V!30721)) (EmptyCell!9177) )
))
(declare-datatypes ((array!54638 0))(
  ( (array!54639 (arr!26260 (Array (_ BitVec 32) ValueCell!9177)) (size!26720 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54638)

(declare-fun defaultEntry!1235 () Int)

(declare-fun lt!411711 () Bool)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun zeroValue!1173 () V!30721)

(declare-fun minValue!1173 () V!30721)

(declare-datatypes ((tuple2!12666 0))(
  ( (tuple2!12667 (_1!6343 (_ BitVec 64)) (_2!6343 V!30721)) )
))
(declare-datatypes ((List!18525 0))(
  ( (Nil!18522) (Cons!18521 (h!19667 tuple2!12666) (t!26146 List!18525)) )
))
(declare-datatypes ((ListLongMap!11377 0))(
  ( (ListLongMap!11378 (toList!5704 List!18525)) )
))
(declare-fun contains!4724 (ListLongMap!11377 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2933 (array!54636 array!54638 (_ BitVec 32) (_ BitVec 32) V!30721 V!30721 (_ BitVec 32) Int) ListLongMap!11377)

(assert (=> b!916055 (= lt!411711 (contains!4724 (getCurrentListMap!2933 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235) k0!1099))))

(declare-fun mapNonEmpty!30732 () Bool)

(declare-fun tp!58868 () Bool)

(assert (=> mapNonEmpty!30732 (= mapRes!30732 (and tp!58868 e!514237))))

(declare-fun mapKey!30732 () (_ BitVec 32))

(declare-fun mapRest!30732 () (Array (_ BitVec 32) ValueCell!9177))

(declare-fun mapValue!30732 () ValueCell!9177)

(assert (=> mapNonEmpty!30732 (= (arr!26260 _values!1231) (store mapRest!30732 mapKey!30732 mapValue!30732))))

(declare-fun b!916056 () Bool)

(declare-fun res!617678 () Bool)

(assert (=> b!916056 (=> (not res!617678) (not e!514239))))

(assert (=> b!916056 (= res!617678 (and (= (size!26720 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26719 _keys!1487) (size!26720 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun res!617675 () Bool)

(assert (=> start!78624 (=> (not res!617675) (not e!514239))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78624 (= res!617675 (validMask!0 mask!1881))))

(assert (=> start!78624 e!514239))

(assert (=> start!78624 true))

(declare-fun e!514236 () Bool)

(declare-fun array_inv!20478 (array!54638) Bool)

(assert (=> start!78624 (and (array_inv!20478 _values!1231) e!514236)))

(assert (=> start!78624 tp!58869))

(declare-fun array_inv!20479 (array!54636) Bool)

(assert (=> start!78624 (array_inv!20479 _keys!1487)))

(assert (=> start!78624 tp_is_empty!19317))

(declare-fun b!916057 () Bool)

(assert (=> b!916057 (= e!514236 (and e!514235 mapRes!30732))))

(declare-fun condMapEmpty!30732 () Bool)

(declare-fun mapDefault!30732 () ValueCell!9177)

(assert (=> b!916057 (= condMapEmpty!30732 (= (arr!26260 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9177)) mapDefault!30732)))))

(declare-fun b!916058 () Bool)

(declare-fun res!617677 () Bool)

(assert (=> b!916058 (=> (not res!617677) (not e!514239))))

(declare-datatypes ((List!18526 0))(
  ( (Nil!18523) (Cons!18522 (h!19668 (_ BitVec 64)) (t!26147 List!18526)) )
))
(declare-fun arrayNoDuplicates!0 (array!54636 (_ BitVec 32) List!18526) Bool)

(assert (=> b!916058 (= res!617677 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18523))))

(assert (= (and start!78624 res!617675) b!916056))

(assert (= (and b!916056 res!617678) b!916051))

(assert (= (and b!916051 res!617676) b!916058))

(assert (= (and b!916058 res!617677) b!916054))

(assert (= (and b!916054 res!617674) b!916055))

(assert (= (and b!916057 condMapEmpty!30732) mapIsEmpty!30732))

(assert (= (and b!916057 (not condMapEmpty!30732)) mapNonEmpty!30732))

(get-info :version)

(assert (= (and mapNonEmpty!30732 ((_ is ValueCellFull!9177) mapValue!30732)) b!916053))

(assert (= (and b!916057 ((_ is ValueCellFull!9177) mapDefault!30732)) b!916052))

(assert (= start!78624 b!916057))

(declare-fun m!850271 () Bool)

(assert (=> b!916051 m!850271))

(declare-fun m!850273 () Bool)

(assert (=> start!78624 m!850273))

(declare-fun m!850275 () Bool)

(assert (=> start!78624 m!850275))

(declare-fun m!850277 () Bool)

(assert (=> start!78624 m!850277))

(declare-fun m!850279 () Bool)

(assert (=> b!916055 m!850279))

(assert (=> b!916055 m!850279))

(declare-fun m!850281 () Bool)

(assert (=> b!916055 m!850281))

(declare-fun m!850283 () Bool)

(assert (=> mapNonEmpty!30732 m!850283))

(declare-fun m!850285 () Bool)

(assert (=> b!916058 m!850285))

(check-sat (not b!916055) (not b!916058) (not mapNonEmpty!30732) tp_is_empty!19317 (not b_next!16809) (not start!78624) (not b!916051) b_and!27449)
(check-sat b_and!27449 (not b_next!16809))
