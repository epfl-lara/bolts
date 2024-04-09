; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77834 () Bool)

(assert start!77834)

(declare-fun b_free!16365 () Bool)

(declare-fun b_next!16365 () Bool)

(assert (=> start!77834 (= b_free!16365 (not b_next!16365))))

(declare-fun tp!57360 () Bool)

(declare-fun b_and!26905 () Bool)

(assert (=> start!77834 (= tp!57360 b_and!26905)))

(declare-fun b!907995 () Bool)

(declare-fun e!508926 () Bool)

(assert (=> b!907995 (= e!508926 true)))

(declare-datatypes ((V!30009 0))(
  ( (V!30010 (val!9442 Int)) )
))
(declare-datatypes ((tuple2!12326 0))(
  ( (tuple2!12327 (_1!6173 (_ BitVec 64)) (_2!6173 V!30009)) )
))
(declare-datatypes ((List!18183 0))(
  ( (Nil!18180) (Cons!18179 (h!19325 tuple2!12326) (t!25728 List!18183)) )
))
(declare-datatypes ((ListLongMap!11037 0))(
  ( (ListLongMap!11038 (toList!5534 List!18183)) )
))
(declare-fun lt!409554 () ListLongMap!11037)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun lt!409555 () V!30009)

(declare-fun apply!509 (ListLongMap!11037 (_ BitVec 64)) V!30009)

(assert (=> b!907995 (= (apply!509 lt!409554 k0!1033) lt!409555)))

(declare-datatypes ((ValueCell!8910 0))(
  ( (ValueCellFull!8910 (v!11949 V!30009)) (EmptyCell!8910) )
))
(declare-datatypes ((array!53592 0))(
  ( (array!53593 (arr!25750 (Array (_ BitVec 32) ValueCell!8910)) (size!26210 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53592)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30009)

(declare-datatypes ((array!53594 0))(
  ( (array!53595 (arr!25751 (Array (_ BitVec 32) (_ BitVec 64))) (size!26211 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53594)

(declare-datatypes ((Unit!30797 0))(
  ( (Unit!30798) )
))
(declare-fun lt!409553 () Unit!30797)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30009)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!55 (array!53594 array!53592 (_ BitVec 32) (_ BitVec 32) V!30009 V!30009 (_ BitVec 64) V!30009 (_ BitVec 32) Int) Unit!30797)

(assert (=> b!907995 (= lt!409553 (lemmaListMapApplyFromThenApplyFromZero!55 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 lt!409555 i!717 defaultEntry!1160))))

(declare-fun b!907997 () Bool)

(declare-fun res!612946 () Bool)

(declare-fun e!508928 () Bool)

(assert (=> b!907997 (=> (not res!612946) (not e!508928))))

(assert (=> b!907997 (= res!612946 (and (= (select (arr!25751 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!907998 () Bool)

(declare-fun e!508927 () Bool)

(assert (=> b!907998 (= e!508927 e!508928)))

(declare-fun res!612945 () Bool)

(assert (=> b!907998 (=> (not res!612945) (not e!508928))))

(declare-fun contains!4543 (ListLongMap!11037 (_ BitVec 64)) Bool)

(assert (=> b!907998 (= res!612945 (contains!4543 lt!409554 k0!1033))))

(declare-fun getCurrentListMap!2766 (array!53594 array!53592 (_ BitVec 32) (_ BitVec 32) V!30009 V!30009 (_ BitVec 32) Int) ListLongMap!11037)

(assert (=> b!907998 (= lt!409554 (getCurrentListMap!2766 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!907999 () Bool)

(declare-fun e!508929 () Bool)

(declare-fun tp_is_empty!18783 () Bool)

(assert (=> b!907999 (= e!508929 tp_is_empty!18783)))

(declare-fun b!908000 () Bool)

(declare-fun res!612943 () Bool)

(assert (=> b!908000 (=> (not res!612943) (not e!508928))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!908000 (= res!612943 (inRange!0 i!717 mask!1756))))

(declare-fun b!908001 () Bool)

(declare-fun res!612944 () Bool)

(assert (=> b!908001 (=> (not res!612944) (not e!508927))))

(assert (=> b!908001 (= res!612944 (and (= (size!26210 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26211 _keys!1386) (size!26210 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!908002 () Bool)

(declare-fun e!508925 () Bool)

(assert (=> b!908002 (= e!508928 (not e!508925))))

(declare-fun res!612939 () Bool)

(assert (=> b!908002 (=> res!612939 e!508925)))

(assert (=> b!908002 (= res!612939 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26211 _keys!1386))))))

(declare-fun get!13569 (ValueCell!8910 V!30009) V!30009)

(declare-fun dynLambda!1378 (Int (_ BitVec 64)) V!30009)

(assert (=> b!908002 (= lt!409555 (get!13569 (select (arr!25750 _values!1152) i!717) (dynLambda!1378 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53594 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!908002 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-fun lt!409552 () Unit!30797)

(declare-fun lemmaKeyInListMapIsInArray!251 (array!53594 array!53592 (_ BitVec 32) (_ BitVec 32) V!30009 V!30009 (_ BitVec 64) Int) Unit!30797)

(assert (=> b!908002 (= lt!409552 (lemmaKeyInListMapIsInArray!251 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun mapNonEmpty!29890 () Bool)

(declare-fun mapRes!29890 () Bool)

(declare-fun tp!57361 () Bool)

(declare-fun e!508930 () Bool)

(assert (=> mapNonEmpty!29890 (= mapRes!29890 (and tp!57361 e!508930))))

(declare-fun mapValue!29890 () ValueCell!8910)

(declare-fun mapKey!29890 () (_ BitVec 32))

(declare-fun mapRest!29890 () (Array (_ BitVec 32) ValueCell!8910))

(assert (=> mapNonEmpty!29890 (= (arr!25750 _values!1152) (store mapRest!29890 mapKey!29890 mapValue!29890))))

(declare-fun b!908003 () Bool)

(declare-fun res!612941 () Bool)

(assert (=> b!908003 (=> res!612941 e!508926)))

(declare-fun lt!409551 () ListLongMap!11037)

(assert (=> b!908003 (= res!612941 (not (= (apply!509 lt!409551 k0!1033) lt!409555)))))

(declare-fun b!908004 () Bool)

(assert (=> b!908004 (= e!508925 e!508926)))

(declare-fun res!612938 () Bool)

(assert (=> b!908004 (=> res!612938 e!508926)))

(assert (=> b!908004 (= res!612938 (not (contains!4543 lt!409551 k0!1033)))))

(assert (=> b!908004 (= lt!409551 (getCurrentListMap!2766 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun mapIsEmpty!29890 () Bool)

(assert (=> mapIsEmpty!29890 mapRes!29890))

(declare-fun b!908005 () Bool)

(declare-fun res!612937 () Bool)

(assert (=> b!908005 (=> (not res!612937) (not e!508927))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53594 (_ BitVec 32)) Bool)

(assert (=> b!908005 (= res!612937 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun res!612942 () Bool)

(assert (=> start!77834 (=> (not res!612942) (not e!508927))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77834 (= res!612942 (validMask!0 mask!1756))))

(assert (=> start!77834 e!508927))

(declare-fun e!508931 () Bool)

(declare-fun array_inv!20136 (array!53592) Bool)

(assert (=> start!77834 (and (array_inv!20136 _values!1152) e!508931)))

(assert (=> start!77834 tp!57360))

(assert (=> start!77834 true))

(assert (=> start!77834 tp_is_empty!18783))

(declare-fun array_inv!20137 (array!53594) Bool)

(assert (=> start!77834 (array_inv!20137 _keys!1386)))

(declare-fun b!907996 () Bool)

(assert (=> b!907996 (= e!508931 (and e!508929 mapRes!29890))))

(declare-fun condMapEmpty!29890 () Bool)

(declare-fun mapDefault!29890 () ValueCell!8910)

(assert (=> b!907996 (= condMapEmpty!29890 (= (arr!25750 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8910)) mapDefault!29890)))))

(declare-fun b!908006 () Bool)

(declare-fun res!612940 () Bool)

(assert (=> b!908006 (=> (not res!612940) (not e!508927))))

(declare-datatypes ((List!18184 0))(
  ( (Nil!18181) (Cons!18180 (h!19326 (_ BitVec 64)) (t!25729 List!18184)) )
))
(declare-fun arrayNoDuplicates!0 (array!53594 (_ BitVec 32) List!18184) Bool)

(assert (=> b!908006 (= res!612940 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18181))))

(declare-fun b!908007 () Bool)

(assert (=> b!908007 (= e!508930 tp_is_empty!18783)))

(assert (= (and start!77834 res!612942) b!908001))

(assert (= (and b!908001 res!612944) b!908005))

(assert (= (and b!908005 res!612937) b!908006))

(assert (= (and b!908006 res!612940) b!907998))

(assert (= (and b!907998 res!612945) b!908000))

(assert (= (and b!908000 res!612943) b!907997))

(assert (= (and b!907997 res!612946) b!908002))

(assert (= (and b!908002 (not res!612939)) b!908004))

(assert (= (and b!908004 (not res!612938)) b!908003))

(assert (= (and b!908003 (not res!612941)) b!907995))

(assert (= (and b!907996 condMapEmpty!29890) mapIsEmpty!29890))

(assert (= (and b!907996 (not condMapEmpty!29890)) mapNonEmpty!29890))

(get-info :version)

(assert (= (and mapNonEmpty!29890 ((_ is ValueCellFull!8910) mapValue!29890)) b!908007))

(assert (= (and b!907996 ((_ is ValueCellFull!8910) mapDefault!29890)) b!907999))

(assert (= start!77834 b!907996))

(declare-fun b_lambda!13279 () Bool)

(assert (=> (not b_lambda!13279) (not b!908002)))

(declare-fun t!25727 () Bool)

(declare-fun tb!5395 () Bool)

(assert (=> (and start!77834 (= defaultEntry!1160 defaultEntry!1160) t!25727) tb!5395))

(declare-fun result!10579 () Bool)

(assert (=> tb!5395 (= result!10579 tp_is_empty!18783)))

(assert (=> b!908002 t!25727))

(declare-fun b_and!26907 () Bool)

(assert (= b_and!26905 (and (=> t!25727 result!10579) b_and!26907)))

(declare-fun m!843445 () Bool)

(assert (=> b!908005 m!843445))

(declare-fun m!843447 () Bool)

(assert (=> b!908002 m!843447))

(declare-fun m!843449 () Bool)

(assert (=> b!908002 m!843449))

(declare-fun m!843451 () Bool)

(assert (=> b!908002 m!843451))

(declare-fun m!843453 () Bool)

(assert (=> b!908002 m!843453))

(assert (=> b!908002 m!843447))

(assert (=> b!908002 m!843451))

(declare-fun m!843455 () Bool)

(assert (=> b!908002 m!843455))

(declare-fun m!843457 () Bool)

(assert (=> b!907997 m!843457))

(declare-fun m!843459 () Bool)

(assert (=> b!907998 m!843459))

(declare-fun m!843461 () Bool)

(assert (=> b!907998 m!843461))

(declare-fun m!843463 () Bool)

(assert (=> b!907995 m!843463))

(declare-fun m!843465 () Bool)

(assert (=> b!907995 m!843465))

(declare-fun m!843467 () Bool)

(assert (=> b!908003 m!843467))

(declare-fun m!843469 () Bool)

(assert (=> b!908004 m!843469))

(declare-fun m!843471 () Bool)

(assert (=> b!908004 m!843471))

(declare-fun m!843473 () Bool)

(assert (=> b!908000 m!843473))

(declare-fun m!843475 () Bool)

(assert (=> start!77834 m!843475))

(declare-fun m!843477 () Bool)

(assert (=> start!77834 m!843477))

(declare-fun m!843479 () Bool)

(assert (=> start!77834 m!843479))

(declare-fun m!843481 () Bool)

(assert (=> b!908006 m!843481))

(declare-fun m!843483 () Bool)

(assert (=> mapNonEmpty!29890 m!843483))

(check-sat (not b!907995) (not mapNonEmpty!29890) (not b!908002) (not b!908000) b_and!26907 (not b!908006) (not b!908004) (not b!907998) (not b_lambda!13279) tp_is_empty!18783 (not b_next!16365) (not b!908005) (not b!908003) (not start!77834))
(check-sat b_and!26907 (not b_next!16365))
