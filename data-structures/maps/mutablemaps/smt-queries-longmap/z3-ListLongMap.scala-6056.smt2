; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78412 () Bool)

(assert start!78412)

(declare-fun b_free!16749 () Bool)

(declare-fun b_next!16749 () Bool)

(assert (=> start!78412 (= b_free!16749 (not b_next!16749))))

(declare-fun tp!58535 () Bool)

(declare-fun b_and!27383 () Bool)

(assert (=> start!78412 (= tp!58535 b_and!27383)))

(declare-fun res!616674 () Bool)

(declare-fun e!512888 () Bool)

(assert (=> start!78412 (=> (not res!616674) (not e!512888))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78412 (= res!616674 (validMask!0 mask!1756))))

(assert (=> start!78412 e!512888))

(declare-datatypes ((V!30521 0))(
  ( (V!30522 (val!9634 Int)) )
))
(declare-datatypes ((ValueCell!9102 0))(
  ( (ValueCellFull!9102 (v!12150 V!30521)) (EmptyCell!9102) )
))
(declare-datatypes ((array!54342 0))(
  ( (array!54343 (arr!26118 (Array (_ BitVec 32) ValueCell!9102)) (size!26578 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54342)

(declare-fun e!512893 () Bool)

(declare-fun array_inv!20388 (array!54342) Bool)

(assert (=> start!78412 (and (array_inv!20388 _values!1152) e!512893)))

(assert (=> start!78412 tp!58535))

(assert (=> start!78412 true))

(declare-fun tp_is_empty!19167 () Bool)

(assert (=> start!78412 tp_is_empty!19167))

(declare-datatypes ((array!54344 0))(
  ( (array!54345 (arr!26119 (Array (_ BitVec 32) (_ BitVec 64))) (size!26579 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54344)

(declare-fun array_inv!20389 (array!54344) Bool)

(assert (=> start!78412 (array_inv!20389 _keys!1386)))

(declare-fun b!914217 () Bool)

(declare-fun e!512892 () Bool)

(assert (=> b!914217 (= e!512892 true)))

(declare-datatypes ((tuple2!12620 0))(
  ( (tuple2!12621 (_1!6320 (_ BitVec 64)) (_2!6320 V!30521)) )
))
(declare-datatypes ((List!18459 0))(
  ( (Nil!18456) (Cons!18455 (h!19601 tuple2!12620) (t!26076 List!18459)) )
))
(declare-datatypes ((ListLongMap!11331 0))(
  ( (ListLongMap!11332 (toList!5681 List!18459)) )
))
(declare-fun lt!411409 () ListLongMap!11331)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun lt!411407 () V!30521)

(declare-fun apply!537 (ListLongMap!11331 (_ BitVec 64)) V!30521)

(assert (=> b!914217 (= (apply!537 lt!411409 k0!1033) lt!411407)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun i!717 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30521)

(declare-datatypes ((Unit!30925 0))(
  ( (Unit!30926) )
))
(declare-fun lt!411410 () Unit!30925)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30521)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!69 (array!54344 array!54342 (_ BitVec 32) (_ BitVec 32) V!30521 V!30521 (_ BitVec 64) V!30521 (_ BitVec 32) Int) Unit!30925)

(assert (=> b!914217 (= lt!411410 (lemmaListMapApplyFromThenApplyFromZero!69 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 lt!411407 i!717 defaultEntry!1160))))

(declare-fun b!914218 () Bool)

(declare-fun e!512887 () Bool)

(assert (=> b!914218 (= e!512887 e!512892)))

(declare-fun res!616673 () Bool)

(assert (=> b!914218 (=> res!616673 e!512892)))

(declare-fun lt!411408 () ListLongMap!11331)

(declare-fun contains!4696 (ListLongMap!11331 (_ BitVec 64)) Bool)

(assert (=> b!914218 (= res!616673 (not (contains!4696 lt!411408 k0!1033)))))

(declare-fun getCurrentListMap!2910 (array!54344 array!54342 (_ BitVec 32) (_ BitVec 32) V!30521 V!30521 (_ BitVec 32) Int) ListLongMap!11331)

(assert (=> b!914218 (= lt!411408 (getCurrentListMap!2910 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!914219 () Bool)

(declare-fun res!616666 () Bool)

(declare-fun e!512890 () Bool)

(assert (=> b!914219 (=> (not res!616666) (not e!512890))))

(assert (=> b!914219 (= res!616666 (and (= (select (arr!26119 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!914220 () Bool)

(declare-fun res!616672 () Bool)

(assert (=> b!914220 (=> (not res!616672) (not e!512888))))

(assert (=> b!914220 (= res!616672 (and (= (size!26578 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26579 _keys!1386) (size!26578 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!914221 () Bool)

(declare-fun res!616668 () Bool)

(assert (=> b!914221 (=> (not res!616668) (not e!512888))))

(declare-datatypes ((List!18460 0))(
  ( (Nil!18457) (Cons!18456 (h!19602 (_ BitVec 64)) (t!26077 List!18460)) )
))
(declare-fun arrayNoDuplicates!0 (array!54344 (_ BitVec 32) List!18460) Bool)

(assert (=> b!914221 (= res!616668 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18457))))

(declare-fun mapNonEmpty!30489 () Bool)

(declare-fun mapRes!30489 () Bool)

(declare-fun tp!58536 () Bool)

(declare-fun e!512886 () Bool)

(assert (=> mapNonEmpty!30489 (= mapRes!30489 (and tp!58536 e!512886))))

(declare-fun mapKey!30489 () (_ BitVec 32))

(declare-fun mapValue!30489 () ValueCell!9102)

(declare-fun mapRest!30489 () (Array (_ BitVec 32) ValueCell!9102))

(assert (=> mapNonEmpty!30489 (= (arr!26118 _values!1152) (store mapRest!30489 mapKey!30489 mapValue!30489))))

(declare-fun b!914222 () Bool)

(assert (=> b!914222 (= e!512890 (not e!512887))))

(declare-fun res!616667 () Bool)

(assert (=> b!914222 (=> res!616667 e!512887)))

(assert (=> b!914222 (= res!616667 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26579 _keys!1386))))))

(declare-fun get!13728 (ValueCell!9102 V!30521) V!30521)

(declare-fun dynLambda!1403 (Int (_ BitVec 64)) V!30521)

(assert (=> b!914222 (= lt!411407 (get!13728 (select (arr!26118 _values!1152) i!717) (dynLambda!1403 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!54344 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!914222 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-fun lt!411406 () Unit!30925)

(declare-fun lemmaKeyInListMapIsInArray!295 (array!54344 array!54342 (_ BitVec 32) (_ BitVec 32) V!30521 V!30521 (_ BitVec 64) Int) Unit!30925)

(assert (=> b!914222 (= lt!411406 (lemmaKeyInListMapIsInArray!295 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun b!914223 () Bool)

(declare-fun res!616665 () Bool)

(assert (=> b!914223 (=> (not res!616665) (not e!512890))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!914223 (= res!616665 (inRange!0 i!717 mask!1756))))

(declare-fun b!914224 () Bool)

(declare-fun e!512891 () Bool)

(assert (=> b!914224 (= e!512893 (and e!512891 mapRes!30489))))

(declare-fun condMapEmpty!30489 () Bool)

(declare-fun mapDefault!30489 () ValueCell!9102)

(assert (=> b!914224 (= condMapEmpty!30489 (= (arr!26118 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!9102)) mapDefault!30489)))))

(declare-fun b!914225 () Bool)

(declare-fun res!616671 () Bool)

(assert (=> b!914225 (=> res!616671 e!512892)))

(assert (=> b!914225 (= res!616671 (not (= (apply!537 lt!411408 k0!1033) lt!411407)))))

(declare-fun b!914226 () Bool)

(assert (=> b!914226 (= e!512888 e!512890)))

(declare-fun res!616670 () Bool)

(assert (=> b!914226 (=> (not res!616670) (not e!512890))))

(assert (=> b!914226 (= res!616670 (contains!4696 lt!411409 k0!1033))))

(assert (=> b!914226 (= lt!411409 (getCurrentListMap!2910 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!914227 () Bool)

(assert (=> b!914227 (= e!512886 tp_is_empty!19167)))

(declare-fun b!914228 () Bool)

(assert (=> b!914228 (= e!512891 tp_is_empty!19167)))

(declare-fun mapIsEmpty!30489 () Bool)

(assert (=> mapIsEmpty!30489 mapRes!30489))

(declare-fun b!914229 () Bool)

(declare-fun res!616669 () Bool)

(assert (=> b!914229 (=> (not res!616669) (not e!512888))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54344 (_ BitVec 32)) Bool)

(assert (=> b!914229 (= res!616669 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(assert (= (and start!78412 res!616674) b!914220))

(assert (= (and b!914220 res!616672) b!914229))

(assert (= (and b!914229 res!616669) b!914221))

(assert (= (and b!914221 res!616668) b!914226))

(assert (= (and b!914226 res!616670) b!914223))

(assert (= (and b!914223 res!616665) b!914219))

(assert (= (and b!914219 res!616666) b!914222))

(assert (= (and b!914222 (not res!616667)) b!914218))

(assert (= (and b!914218 (not res!616673)) b!914225))

(assert (= (and b!914225 (not res!616671)) b!914217))

(assert (= (and b!914224 condMapEmpty!30489) mapIsEmpty!30489))

(assert (= (and b!914224 (not condMapEmpty!30489)) mapNonEmpty!30489))

(get-info :version)

(assert (= (and mapNonEmpty!30489 ((_ is ValueCellFull!9102) mapValue!30489)) b!914227))

(assert (= (and b!914224 ((_ is ValueCellFull!9102) mapDefault!30489)) b!914228))

(assert (= start!78412 b!914224))

(declare-fun b_lambda!13409 () Bool)

(assert (=> (not b_lambda!13409) (not b!914222)))

(declare-fun t!26075 () Bool)

(declare-fun tb!5467 () Bool)

(assert (=> (and start!78412 (= defaultEntry!1160 defaultEntry!1160) t!26075) tb!5467))

(declare-fun result!10737 () Bool)

(assert (=> tb!5467 (= result!10737 tp_is_empty!19167)))

(assert (=> b!914222 t!26075))

(declare-fun b_and!27385 () Bool)

(assert (= b_and!27383 (and (=> t!26075 result!10737) b_and!27385)))

(declare-fun m!849051 () Bool)

(assert (=> b!914218 m!849051))

(declare-fun m!849053 () Bool)

(assert (=> b!914218 m!849053))

(declare-fun m!849055 () Bool)

(assert (=> b!914219 m!849055))

(declare-fun m!849057 () Bool)

(assert (=> b!914229 m!849057))

(declare-fun m!849059 () Bool)

(assert (=> b!914221 m!849059))

(declare-fun m!849061 () Bool)

(assert (=> b!914223 m!849061))

(declare-fun m!849063 () Bool)

(assert (=> start!78412 m!849063))

(declare-fun m!849065 () Bool)

(assert (=> start!78412 m!849065))

(declare-fun m!849067 () Bool)

(assert (=> start!78412 m!849067))

(declare-fun m!849069 () Bool)

(assert (=> b!914217 m!849069))

(declare-fun m!849071 () Bool)

(assert (=> b!914217 m!849071))

(declare-fun m!849073 () Bool)

(assert (=> b!914226 m!849073))

(declare-fun m!849075 () Bool)

(assert (=> b!914226 m!849075))

(declare-fun m!849077 () Bool)

(assert (=> b!914222 m!849077))

(declare-fun m!849079 () Bool)

(assert (=> b!914222 m!849079))

(declare-fun m!849081 () Bool)

(assert (=> b!914222 m!849081))

(declare-fun m!849083 () Bool)

(assert (=> b!914222 m!849083))

(assert (=> b!914222 m!849077))

(assert (=> b!914222 m!849081))

(declare-fun m!849085 () Bool)

(assert (=> b!914222 m!849085))

(declare-fun m!849087 () Bool)

(assert (=> mapNonEmpty!30489 m!849087))

(declare-fun m!849089 () Bool)

(assert (=> b!914225 m!849089))

(check-sat (not b!914222) b_and!27385 (not b!914223) (not b_lambda!13409) (not b!914229) tp_is_empty!19167 (not b!914217) (not mapNonEmpty!30489) (not b!914221) (not b!914225) (not b!914226) (not b_next!16749) (not start!78412) (not b!914218))
(check-sat b_and!27385 (not b_next!16749))
