; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78100 () Bool)

(assert start!78100)

(declare-fun b_free!16599 () Bool)

(declare-fun b_next!16599 () Bool)

(assert (=> start!78100 (= b_free!16599 (not b_next!16599))))

(declare-fun tp!58068 () Bool)

(declare-fun b_and!27189 () Bool)

(assert (=> start!78100 (= tp!58068 b_and!27189)))

(declare-fun b!911154 () Bool)

(declare-fun e!511027 () Bool)

(declare-fun tp_is_empty!19017 () Bool)

(assert (=> b!911154 (= e!511027 tp_is_empty!19017)))

(declare-fun b!911155 () Bool)

(declare-fun res!614870 () Bool)

(declare-fun e!511025 () Bool)

(assert (=> b!911155 (=> (not res!614870) (not e!511025))))

(declare-datatypes ((V!30321 0))(
  ( (V!30322 (val!9559 Int)) )
))
(declare-datatypes ((ValueCell!9027 0))(
  ( (ValueCellFull!9027 (v!12068 V!30321)) (EmptyCell!9027) )
))
(declare-datatypes ((array!54042 0))(
  ( (array!54043 (arr!25973 (Array (_ BitVec 32) ValueCell!9027)) (size!26433 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54042)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!54044 0))(
  ( (array!54045 (arr!25974 (Array (_ BitVec 32) (_ BitVec 64))) (size!26434 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54044)

(assert (=> b!911155 (= res!614870 (and (= (size!26433 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26434 _keys!1386) (size!26433 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun res!614872 () Bool)

(assert (=> start!78100 (=> (not res!614872) (not e!511025))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78100 (= res!614872 (validMask!0 mask!1756))))

(assert (=> start!78100 e!511025))

(declare-fun e!511024 () Bool)

(declare-fun array_inv!20286 (array!54042) Bool)

(assert (=> start!78100 (and (array_inv!20286 _values!1152) e!511024)))

(assert (=> start!78100 tp!58068))

(assert (=> start!78100 true))

(assert (=> start!78100 tp_is_empty!19017))

(declare-fun array_inv!20287 (array!54044) Bool)

(assert (=> start!78100 (array_inv!20287 _keys!1386)))

(declare-fun b!911156 () Bool)

(declare-fun res!614869 () Bool)

(assert (=> b!911156 (=> (not res!614869) (not e!511025))))

(declare-datatypes ((List!18350 0))(
  ( (Nil!18347) (Cons!18346 (h!19492 (_ BitVec 64)) (t!25943 List!18350)) )
))
(declare-fun arrayNoDuplicates!0 (array!54044 (_ BitVec 32) List!18350) Bool)

(assert (=> b!911156 (= res!614869 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18347))))

(declare-fun b!911157 () Bool)

(declare-fun e!511026 () Bool)

(assert (=> b!911157 (= e!511026 tp_is_empty!19017)))

(declare-fun b!911158 () Bool)

(declare-fun mapRes!30247 () Bool)

(assert (=> b!911158 (= e!511024 (and e!511026 mapRes!30247))))

(declare-fun condMapEmpty!30247 () Bool)

(declare-fun mapDefault!30247 () ValueCell!9027)

(assert (=> b!911158 (= condMapEmpty!30247 (= (arr!25973 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!9027)) mapDefault!30247)))))

(declare-fun b!911159 () Bool)

(assert (=> b!911159 (= e!511025 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun lt!410326 () Bool)

(declare-fun zeroValue!1094 () V!30321)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun minValue!1094 () V!30321)

(declare-datatypes ((tuple2!12502 0))(
  ( (tuple2!12503 (_1!6261 (_ BitVec 64)) (_2!6261 V!30321)) )
))
(declare-datatypes ((List!18351 0))(
  ( (Nil!18348) (Cons!18347 (h!19493 tuple2!12502) (t!25944 List!18351)) )
))
(declare-datatypes ((ListLongMap!11213 0))(
  ( (ListLongMap!11214 (toList!5622 List!18351)) )
))
(declare-fun contains!4631 (ListLongMap!11213 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2852 (array!54044 array!54042 (_ BitVec 32) (_ BitVec 32) V!30321 V!30321 (_ BitVec 32) Int) ListLongMap!11213)

(assert (=> b!911159 (= lt!410326 (contains!4631 (getCurrentListMap!2852 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!911160 () Bool)

(declare-fun res!614871 () Bool)

(assert (=> b!911160 (=> (not res!614871) (not e!511025))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54044 (_ BitVec 32)) Bool)

(assert (=> b!911160 (= res!614871 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapIsEmpty!30247 () Bool)

(assert (=> mapIsEmpty!30247 mapRes!30247))

(declare-fun mapNonEmpty!30247 () Bool)

(declare-fun tp!58069 () Bool)

(assert (=> mapNonEmpty!30247 (= mapRes!30247 (and tp!58069 e!511027))))

(declare-fun mapValue!30247 () ValueCell!9027)

(declare-fun mapKey!30247 () (_ BitVec 32))

(declare-fun mapRest!30247 () (Array (_ BitVec 32) ValueCell!9027))

(assert (=> mapNonEmpty!30247 (= (arr!25973 _values!1152) (store mapRest!30247 mapKey!30247 mapValue!30247))))

(assert (= (and start!78100 res!614872) b!911155))

(assert (= (and b!911155 res!614870) b!911160))

(assert (= (and b!911160 res!614871) b!911156))

(assert (= (and b!911156 res!614869) b!911159))

(assert (= (and b!911158 condMapEmpty!30247) mapIsEmpty!30247))

(assert (= (and b!911158 (not condMapEmpty!30247)) mapNonEmpty!30247))

(get-info :version)

(assert (= (and mapNonEmpty!30247 ((_ is ValueCellFull!9027) mapValue!30247)) b!911154))

(assert (= (and b!911158 ((_ is ValueCellFull!9027) mapDefault!30247)) b!911157))

(assert (= start!78100 b!911158))

(declare-fun m!846053 () Bool)

(assert (=> start!78100 m!846053))

(declare-fun m!846055 () Bool)

(assert (=> start!78100 m!846055))

(declare-fun m!846057 () Bool)

(assert (=> start!78100 m!846057))

(declare-fun m!846059 () Bool)

(assert (=> mapNonEmpty!30247 m!846059))

(declare-fun m!846061 () Bool)

(assert (=> b!911156 m!846061))

(declare-fun m!846063 () Bool)

(assert (=> b!911160 m!846063))

(declare-fun m!846065 () Bool)

(assert (=> b!911159 m!846065))

(assert (=> b!911159 m!846065))

(declare-fun m!846067 () Bool)

(assert (=> b!911159 m!846067))

(check-sat b_and!27189 (not b!911156) (not b!911159) (not start!78100) (not b_next!16599) tp_is_empty!19017 (not mapNonEmpty!30247) (not b!911160))
(check-sat b_and!27189 (not b_next!16599))
