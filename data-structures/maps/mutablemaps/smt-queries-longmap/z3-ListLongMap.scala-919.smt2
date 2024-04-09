; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20624 () Bool)

(assert start!20624)

(declare-fun b_free!5271 () Bool)

(declare-fun b_next!5271 () Bool)

(assert (=> start!20624 (= b_free!5271 (not b_next!5271))))

(declare-fun tp!18845 () Bool)

(declare-fun b_and!12035 () Bool)

(assert (=> start!20624 (= tp!18845 b_and!12035)))

(declare-fun b!205480 () Bool)

(declare-fun res!99314 () Bool)

(declare-fun e!134375 () Bool)

(assert (=> b!205480 (=> (not res!99314) (not e!134375))))

(declare-datatypes ((array!9466 0))(
  ( (array!9467 (arr!4483 (Array (_ BitVec 32) (_ BitVec 64))) (size!4808 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9466)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6483 0))(
  ( (V!6484 (val!2608 Int)) )
))
(declare-datatypes ((ValueCell!2220 0))(
  ( (ValueCellFull!2220 (v!4574 V!6483)) (EmptyCell!2220) )
))
(declare-datatypes ((array!9468 0))(
  ( (array!9469 (arr!4484 (Array (_ BitVec 32) ValueCell!2220)) (size!4809 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9468)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!205480 (= res!99314 (and (= (size!4809 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4808 _keys!825) (size!4809 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun res!99319 () Bool)

(assert (=> start!20624 (=> (not res!99319) (not e!134375))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20624 (= res!99319 (validMask!0 mask!1149))))

(assert (=> start!20624 e!134375))

(declare-fun e!134378 () Bool)

(declare-fun array_inv!2955 (array!9468) Bool)

(assert (=> start!20624 (and (array_inv!2955 _values!649) e!134378)))

(assert (=> start!20624 true))

(declare-fun tp_is_empty!5127 () Bool)

(assert (=> start!20624 tp_is_empty!5127))

(declare-fun array_inv!2956 (array!9466) Bool)

(assert (=> start!20624 (array_inv!2956 _keys!825)))

(assert (=> start!20624 tp!18845))

(declare-fun b!205481 () Bool)

(declare-fun e!134379 () Bool)

(declare-fun mapRes!8759 () Bool)

(assert (=> b!205481 (= e!134378 (and e!134379 mapRes!8759))))

(declare-fun condMapEmpty!8759 () Bool)

(declare-fun mapDefault!8759 () ValueCell!2220)

(assert (=> b!205481 (= condMapEmpty!8759 (= (arr!4484 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2220)) mapDefault!8759)))))

(declare-fun b!205482 () Bool)

(declare-fun res!99315 () Bool)

(assert (=> b!205482 (=> (not res!99315) (not e!134375))))

(declare-datatypes ((List!2874 0))(
  ( (Nil!2871) (Cons!2870 (h!3512 (_ BitVec 64)) (t!7813 List!2874)) )
))
(declare-fun arrayNoDuplicates!0 (array!9466 (_ BitVec 32) List!2874) Bool)

(assert (=> b!205482 (= res!99315 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2871))))

(declare-fun b!205483 () Bool)

(declare-fun e!134380 () Bool)

(assert (=> b!205483 (= e!134380 tp_is_empty!5127)))

(declare-fun b!205484 () Bool)

(declare-fun res!99317 () Bool)

(assert (=> b!205484 (=> (not res!99317) (not e!134375))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9466 (_ BitVec 32)) Bool)

(assert (=> b!205484 (= res!99317 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!205485 () Bool)

(declare-fun res!99321 () Bool)

(assert (=> b!205485 (=> (not res!99321) (not e!134375))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!205485 (= res!99321 (validKeyInArray!0 k0!843))))

(declare-fun b!205486 () Bool)

(assert (=> b!205486 (= e!134379 tp_is_empty!5127)))

(declare-fun mapIsEmpty!8759 () Bool)

(assert (=> mapIsEmpty!8759 mapRes!8759))

(declare-fun b!205487 () Bool)

(declare-fun e!134376 () Bool)

(assert (=> b!205487 (= e!134376 true)))

(declare-datatypes ((tuple2!3954 0))(
  ( (tuple2!3955 (_1!1987 (_ BitVec 64)) (_2!1987 V!6483)) )
))
(declare-datatypes ((List!2875 0))(
  ( (Nil!2872) (Cons!2871 (h!3513 tuple2!3954) (t!7814 List!2875)) )
))
(declare-datatypes ((ListLongMap!2881 0))(
  ( (ListLongMap!2882 (toList!1456 List!2875)) )
))
(declare-fun lt!104688 () ListLongMap!2881)

(declare-fun lt!104684 () ListLongMap!2881)

(declare-fun lt!104689 () tuple2!3954)

(declare-fun +!473 (ListLongMap!2881 tuple2!3954) ListLongMap!2881)

(assert (=> b!205487 (= lt!104688 (+!473 lt!104684 lt!104689))))

(declare-fun lt!104679 () ListLongMap!2881)

(declare-fun minValue!615 () V!6483)

(declare-datatypes ((Unit!6245 0))(
  ( (Unit!6246) )
))
(declare-fun lt!104687 () Unit!6245)

(declare-fun v!520 () V!6483)

(declare-fun addCommutativeForDiffKeys!173 (ListLongMap!2881 (_ BitVec 64) V!6483 (_ BitVec 64) V!6483) Unit!6245)

(assert (=> b!205487 (= lt!104687 (addCommutativeForDiffKeys!173 lt!104679 k0!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun mapNonEmpty!8759 () Bool)

(declare-fun tp!18844 () Bool)

(assert (=> mapNonEmpty!8759 (= mapRes!8759 (and tp!18844 e!134380))))

(declare-fun mapValue!8759 () ValueCell!2220)

(declare-fun mapKey!8759 () (_ BitVec 32))

(declare-fun mapRest!8759 () (Array (_ BitVec 32) ValueCell!2220))

(assert (=> mapNonEmpty!8759 (= (arr!4484 _values!649) (store mapRest!8759 mapKey!8759 mapValue!8759))))

(declare-fun b!205488 () Bool)

(declare-fun res!99318 () Bool)

(assert (=> b!205488 (=> (not res!99318) (not e!134375))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!205488 (= res!99318 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4808 _keys!825))))))

(declare-fun b!205489 () Bool)

(declare-fun e!134377 () Bool)

(assert (=> b!205489 (= e!134375 (not e!134377))))

(declare-fun res!99316 () Bool)

(assert (=> b!205489 (=> res!99316 e!134377)))

(assert (=> b!205489 (= res!99316 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!104686 () ListLongMap!2881)

(declare-fun zeroValue!615 () V!6483)

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!1022 (array!9466 array!9468 (_ BitVec 32) (_ BitVec 32) V!6483 V!6483 (_ BitVec 32) Int) ListLongMap!2881)

(assert (=> b!205489 (= lt!104686 (getCurrentListMap!1022 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!104678 () array!9468)

(declare-fun lt!104683 () ListLongMap!2881)

(assert (=> b!205489 (= lt!104683 (getCurrentListMap!1022 _keys!825 lt!104678 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!104680 () ListLongMap!2881)

(declare-fun lt!104685 () ListLongMap!2881)

(assert (=> b!205489 (and (= lt!104680 lt!104685) (= lt!104685 lt!104680))))

(assert (=> b!205489 (= lt!104685 (+!473 lt!104679 lt!104689))))

(assert (=> b!205489 (= lt!104689 (tuple2!3955 k0!843 v!520))))

(declare-fun lt!104682 () Unit!6245)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!135 (array!9466 array!9468 (_ BitVec 32) (_ BitVec 32) V!6483 V!6483 (_ BitVec 32) (_ BitVec 64) V!6483 (_ BitVec 32) Int) Unit!6245)

(assert (=> b!205489 (= lt!104682 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!135 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!393 (array!9466 array!9468 (_ BitVec 32) (_ BitVec 32) V!6483 V!6483 (_ BitVec 32) Int) ListLongMap!2881)

(assert (=> b!205489 (= lt!104680 (getCurrentListMapNoExtraKeys!393 _keys!825 lt!104678 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!205489 (= lt!104678 (array!9469 (store (arr!4484 _values!649) i!601 (ValueCellFull!2220 v!520)) (size!4809 _values!649)))))

(assert (=> b!205489 (= lt!104679 (getCurrentListMapNoExtraKeys!393 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!205490 () Bool)

(declare-fun res!99320 () Bool)

(assert (=> b!205490 (=> (not res!99320) (not e!134375))))

(assert (=> b!205490 (= res!99320 (= (select (arr!4483 _keys!825) i!601) k0!843))))

(declare-fun b!205491 () Bool)

(assert (=> b!205491 (= e!134377 e!134376)))

(declare-fun res!99322 () Bool)

(assert (=> b!205491 (=> res!99322 e!134376)))

(assert (=> b!205491 (= res!99322 (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!205491 (= lt!104686 lt!104684)))

(declare-fun lt!104681 () tuple2!3954)

(assert (=> b!205491 (= lt!104684 (+!473 lt!104679 lt!104681))))

(assert (=> b!205491 (= lt!104683 lt!104688)))

(assert (=> b!205491 (= lt!104688 (+!473 lt!104685 lt!104681))))

(assert (=> b!205491 (= lt!104683 (+!473 lt!104680 lt!104681))))

(assert (=> b!205491 (= lt!104681 (tuple2!3955 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (= (and start!20624 res!99319) b!205480))

(assert (= (and b!205480 res!99314) b!205484))

(assert (= (and b!205484 res!99317) b!205482))

(assert (= (and b!205482 res!99315) b!205488))

(assert (= (and b!205488 res!99318) b!205485))

(assert (= (and b!205485 res!99321) b!205490))

(assert (= (and b!205490 res!99320) b!205489))

(assert (= (and b!205489 (not res!99316)) b!205491))

(assert (= (and b!205491 (not res!99322)) b!205487))

(assert (= (and b!205481 condMapEmpty!8759) mapIsEmpty!8759))

(assert (= (and b!205481 (not condMapEmpty!8759)) mapNonEmpty!8759))

(get-info :version)

(assert (= (and mapNonEmpty!8759 ((_ is ValueCellFull!2220) mapValue!8759)) b!205483))

(assert (= (and b!205481 ((_ is ValueCellFull!2220) mapDefault!8759)) b!205486))

(assert (= start!20624 b!205481))

(declare-fun m!233137 () Bool)

(assert (=> b!205489 m!233137))

(declare-fun m!233139 () Bool)

(assert (=> b!205489 m!233139))

(declare-fun m!233141 () Bool)

(assert (=> b!205489 m!233141))

(declare-fun m!233143 () Bool)

(assert (=> b!205489 m!233143))

(declare-fun m!233145 () Bool)

(assert (=> b!205489 m!233145))

(declare-fun m!233147 () Bool)

(assert (=> b!205489 m!233147))

(declare-fun m!233149 () Bool)

(assert (=> b!205489 m!233149))

(declare-fun m!233151 () Bool)

(assert (=> b!205490 m!233151))

(declare-fun m!233153 () Bool)

(assert (=> b!205482 m!233153))

(declare-fun m!233155 () Bool)

(assert (=> b!205485 m!233155))

(declare-fun m!233157 () Bool)

(assert (=> b!205491 m!233157))

(declare-fun m!233159 () Bool)

(assert (=> b!205491 m!233159))

(declare-fun m!233161 () Bool)

(assert (=> b!205491 m!233161))

(declare-fun m!233163 () Bool)

(assert (=> mapNonEmpty!8759 m!233163))

(declare-fun m!233165 () Bool)

(assert (=> start!20624 m!233165))

(declare-fun m!233167 () Bool)

(assert (=> start!20624 m!233167))

(declare-fun m!233169 () Bool)

(assert (=> start!20624 m!233169))

(declare-fun m!233171 () Bool)

(assert (=> b!205484 m!233171))

(declare-fun m!233173 () Bool)

(assert (=> b!205487 m!233173))

(declare-fun m!233175 () Bool)

(assert (=> b!205487 m!233175))

(check-sat (not b!205489) (not b!205487) (not b!205482) (not b_next!5271) (not b!205491) (not start!20624) b_and!12035 (not b!205484) (not mapNonEmpty!8759) (not b!205485) tp_is_empty!5127)
(check-sat b_and!12035 (not b_next!5271))
