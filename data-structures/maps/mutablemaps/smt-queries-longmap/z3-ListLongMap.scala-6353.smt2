; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81884 () Bool)

(assert start!81884)

(declare-fun b_free!18351 () Bool)

(declare-fun b_next!18351 () Bool)

(assert (=> start!81884 (= b_free!18351 (not b_next!18351))))

(declare-fun tp!63754 () Bool)

(declare-fun b_and!29855 () Bool)

(assert (=> start!81884 (= tp!63754 b_and!29855)))

(declare-fun b!954466 () Bool)

(declare-fun e!537771 () Bool)

(declare-fun e!537768 () Bool)

(declare-fun mapRes!33304 () Bool)

(assert (=> b!954466 (= e!537771 (and e!537768 mapRes!33304))))

(declare-fun condMapEmpty!33304 () Bool)

(declare-datatypes ((V!32843 0))(
  ( (V!32844 (val!10498 Int)) )
))
(declare-datatypes ((ValueCell!9966 0))(
  ( (ValueCellFull!9966 (v!13053 V!32843)) (EmptyCell!9966) )
))
(declare-datatypes ((array!57915 0))(
  ( (array!57916 (arr!27833 (Array (_ BitVec 32) ValueCell!9966)) (size!28313 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57915)

(declare-fun mapDefault!33304 () ValueCell!9966)

(assert (=> b!954466 (= condMapEmpty!33304 (= (arr!27833 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!9966)) mapDefault!33304)))))

(declare-fun res!639271 () Bool)

(declare-fun e!537767 () Bool)

(assert (=> start!81884 (=> (not res!639271) (not e!537767))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81884 (= res!639271 (validMask!0 mask!1823))))

(assert (=> start!81884 e!537767))

(assert (=> start!81884 true))

(declare-fun tp_is_empty!20895 () Bool)

(assert (=> start!81884 tp_is_empty!20895))

(declare-datatypes ((array!57917 0))(
  ( (array!57918 (arr!27834 (Array (_ BitVec 32) (_ BitVec 64))) (size!28314 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57917)

(declare-fun array_inv!21551 (array!57917) Bool)

(assert (=> start!81884 (array_inv!21551 _keys!1441)))

(declare-fun array_inv!21552 (array!57915) Bool)

(assert (=> start!81884 (and (array_inv!21552 _values!1197) e!537771)))

(assert (=> start!81884 tp!63754))

(declare-fun b!954467 () Bool)

(declare-fun res!639268 () Bool)

(assert (=> b!954467 (=> (not res!639268) (not e!537767))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(assert (=> b!954467 (= res!639268 (and (= (size!28313 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28314 _keys!1441) (size!28313 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!954468 () Bool)

(declare-fun res!639269 () Bool)

(assert (=> b!954468 (=> (not res!639269) (not e!537767))))

(declare-fun i!735 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!954468 (= res!639269 (validKeyInArray!0 (select (arr!27834 _keys!1441) i!735)))))

(declare-fun mapNonEmpty!33304 () Bool)

(declare-fun tp!63753 () Bool)

(declare-fun e!537770 () Bool)

(assert (=> mapNonEmpty!33304 (= mapRes!33304 (and tp!63753 e!537770))))

(declare-fun mapKey!33304 () (_ BitVec 32))

(declare-fun mapRest!33304 () (Array (_ BitVec 32) ValueCell!9966))

(declare-fun mapValue!33304 () ValueCell!9966)

(assert (=> mapNonEmpty!33304 (= (arr!27833 _values!1197) (store mapRest!33304 mapKey!33304 mapValue!33304))))

(declare-fun b!954469 () Bool)

(assert (=> b!954469 (= e!537767 false)))

(declare-fun lt!429865 () Bool)

(declare-fun zeroValue!1139 () V!32843)

(declare-fun minValue!1139 () V!32843)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13722 0))(
  ( (tuple2!13723 (_1!6871 (_ BitVec 64)) (_2!6871 V!32843)) )
))
(declare-datatypes ((List!19539 0))(
  ( (Nil!19536) (Cons!19535 (h!20697 tuple2!13722) (t!27908 List!19539)) )
))
(declare-datatypes ((ListLongMap!12433 0))(
  ( (ListLongMap!12434 (toList!6232 List!19539)) )
))
(declare-fun contains!5282 (ListLongMap!12433 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3417 (array!57917 array!57915 (_ BitVec 32) (_ BitVec 32) V!32843 V!32843 (_ BitVec 32) Int) ListLongMap!12433)

(assert (=> b!954469 (= lt!429865 (contains!5282 (getCurrentListMap!3417 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27834 _keys!1441) i!735)))))

(declare-fun b!954470 () Bool)

(assert (=> b!954470 (= e!537768 tp_is_empty!20895)))

(declare-fun b!954471 () Bool)

(declare-fun res!639267 () Bool)

(assert (=> b!954471 (=> (not res!639267) (not e!537767))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57917 (_ BitVec 32)) Bool)

(assert (=> b!954471 (= res!639267 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!954472 () Bool)

(assert (=> b!954472 (= e!537770 tp_is_empty!20895)))

(declare-fun b!954473 () Bool)

(declare-fun res!639266 () Bool)

(assert (=> b!954473 (=> (not res!639266) (not e!537767))))

(assert (=> b!954473 (= res!639266 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28314 _keys!1441))))))

(declare-fun mapIsEmpty!33304 () Bool)

(assert (=> mapIsEmpty!33304 mapRes!33304))

(declare-fun b!954474 () Bool)

(declare-fun res!639270 () Bool)

(assert (=> b!954474 (=> (not res!639270) (not e!537767))))

(declare-datatypes ((List!19540 0))(
  ( (Nil!19537) (Cons!19536 (h!20698 (_ BitVec 64)) (t!27909 List!19540)) )
))
(declare-fun arrayNoDuplicates!0 (array!57917 (_ BitVec 32) List!19540) Bool)

(assert (=> b!954474 (= res!639270 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19537))))

(assert (= (and start!81884 res!639271) b!954467))

(assert (= (and b!954467 res!639268) b!954471))

(assert (= (and b!954471 res!639267) b!954474))

(assert (= (and b!954474 res!639270) b!954473))

(assert (= (and b!954473 res!639266) b!954468))

(assert (= (and b!954468 res!639269) b!954469))

(assert (= (and b!954466 condMapEmpty!33304) mapIsEmpty!33304))

(assert (= (and b!954466 (not condMapEmpty!33304)) mapNonEmpty!33304))

(get-info :version)

(assert (= (and mapNonEmpty!33304 ((_ is ValueCellFull!9966) mapValue!33304)) b!954472))

(assert (= (and b!954466 ((_ is ValueCellFull!9966) mapDefault!33304)) b!954470))

(assert (= start!81884 b!954466))

(declare-fun m!886259 () Bool)

(assert (=> b!954474 m!886259))

(declare-fun m!886261 () Bool)

(assert (=> mapNonEmpty!33304 m!886261))

(declare-fun m!886263 () Bool)

(assert (=> start!81884 m!886263))

(declare-fun m!886265 () Bool)

(assert (=> start!81884 m!886265))

(declare-fun m!886267 () Bool)

(assert (=> start!81884 m!886267))

(declare-fun m!886269 () Bool)

(assert (=> b!954469 m!886269))

(declare-fun m!886271 () Bool)

(assert (=> b!954469 m!886271))

(assert (=> b!954469 m!886269))

(assert (=> b!954469 m!886271))

(declare-fun m!886273 () Bool)

(assert (=> b!954469 m!886273))

(assert (=> b!954468 m!886271))

(assert (=> b!954468 m!886271))

(declare-fun m!886275 () Bool)

(assert (=> b!954468 m!886275))

(declare-fun m!886277 () Bool)

(assert (=> b!954471 m!886277))

(check-sat (not b!954474) (not b!954469) (not b_next!18351) (not start!81884) (not b!954468) b_and!29855 (not b!954471) tp_is_empty!20895 (not mapNonEmpty!33304))
(check-sat b_and!29855 (not b_next!18351))
