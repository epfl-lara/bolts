; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33670 () Bool)

(assert start!33670)

(declare-fun b_free!6897 () Bool)

(declare-fun b_next!6897 () Bool)

(assert (=> start!33670 (= b_free!6897 (not b_next!6897))))

(declare-fun tp!24195 () Bool)

(declare-fun b_and!14095 () Bool)

(assert (=> start!33670 (= tp!24195 b_and!14095)))

(declare-fun b!334102 () Bool)

(declare-fun res!184231 () Bool)

(declare-fun e!205116 () Bool)

(assert (=> b!334102 (=> (not res!184231) (not e!205116))))

(declare-datatypes ((array!17287 0))(
  ( (array!17288 (arr!8171 (Array (_ BitVec 32) (_ BitVec 64))) (size!8523 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17287)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17287 (_ BitVec 32)) Bool)

(assert (=> b!334102 (= res!184231 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!334103 () Bool)

(declare-fun e!205112 () Bool)

(assert (=> b!334103 (= e!205116 e!205112)))

(declare-fun res!184232 () Bool)

(assert (=> b!334103 (=> (not res!184232) (not e!205112))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3169 0))(
  ( (MissingZero!3169 (index!14855 (_ BitVec 32))) (Found!3169 (index!14856 (_ BitVec 32))) (Intermediate!3169 (undefined!3981 Bool) (index!14857 (_ BitVec 32)) (x!33314 (_ BitVec 32))) (Undefined!3169) (MissingVacant!3169 (index!14858 (_ BitVec 32))) )
))
(declare-fun lt!159458 () SeekEntryResult!3169)

(get-info :version)

(assert (=> b!334103 (= res!184232 (and ((_ is Found!3169) lt!159458) (= (select (arr!8171 _keys!1895) (index!14856 lt!159458)) k0!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17287 (_ BitVec 32)) SeekEntryResult!3169)

(assert (=> b!334103 (= lt!159458 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!334104 () Bool)

(declare-fun e!205114 () Bool)

(declare-fun e!205115 () Bool)

(declare-fun mapRes!11670 () Bool)

(assert (=> b!334104 (= e!205114 (and e!205115 mapRes!11670))))

(declare-fun condMapEmpty!11670 () Bool)

(declare-datatypes ((V!10109 0))(
  ( (V!10110 (val!3469 Int)) )
))
(declare-datatypes ((ValueCell!3081 0))(
  ( (ValueCellFull!3081 (v!5627 V!10109)) (EmptyCell!3081) )
))
(declare-datatypes ((array!17289 0))(
  ( (array!17290 (arr!8172 (Array (_ BitVec 32) ValueCell!3081)) (size!8524 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17289)

(declare-fun mapDefault!11670 () ValueCell!3081)

(assert (=> b!334104 (= condMapEmpty!11670 (= (arr!8172 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3081)) mapDefault!11670)))))

(declare-fun b!334105 () Bool)

(declare-fun tp_is_empty!6849 () Bool)

(assert (=> b!334105 (= e!205115 tp_is_empty!6849)))

(declare-fun b!334106 () Bool)

(declare-fun res!184234 () Bool)

(assert (=> b!334106 (=> (not res!184234) (not e!205116))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!334106 (= res!184234 (and (= (size!8524 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8523 _keys!1895) (size!8524 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!334107 () Bool)

(assert (=> b!334107 (= e!205112 (not true))))

(declare-fun arrayContainsKey!0 (array!17287 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!334107 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!10392 0))(
  ( (Unit!10393) )
))
(declare-fun lt!159459 () Unit!10392)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17287 (_ BitVec 64) (_ BitVec 32)) Unit!10392)

(assert (=> b!334107 (= lt!159459 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k0!1348 (index!14856 lt!159458)))))

(declare-fun b!334108 () Bool)

(declare-fun e!205111 () Bool)

(assert (=> b!334108 (= e!205111 tp_is_empty!6849)))

(declare-fun res!184238 () Bool)

(assert (=> start!33670 (=> (not res!184238) (not e!205116))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33670 (= res!184238 (validMask!0 mask!2385))))

(assert (=> start!33670 e!205116))

(assert (=> start!33670 true))

(assert (=> start!33670 tp_is_empty!6849))

(assert (=> start!33670 tp!24195))

(declare-fun array_inv!6068 (array!17289) Bool)

(assert (=> start!33670 (and (array_inv!6068 _values!1525) e!205114)))

(declare-fun array_inv!6069 (array!17287) Bool)

(assert (=> start!33670 (array_inv!6069 _keys!1895)))

(declare-fun b!334109 () Bool)

(declare-fun res!184235 () Bool)

(assert (=> b!334109 (=> (not res!184235) (not e!205116))))

(declare-fun zeroValue!1467 () V!10109)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10109)

(declare-datatypes ((tuple2!5040 0))(
  ( (tuple2!5041 (_1!2530 (_ BitVec 64)) (_2!2530 V!10109)) )
))
(declare-datatypes ((List!4682 0))(
  ( (Nil!4679) (Cons!4678 (h!5534 tuple2!5040) (t!9778 List!4682)) )
))
(declare-datatypes ((ListLongMap!3967 0))(
  ( (ListLongMap!3968 (toList!1999 List!4682)) )
))
(declare-fun contains!2039 (ListLongMap!3967 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1522 (array!17287 array!17289 (_ BitVec 32) (_ BitVec 32) V!10109 V!10109 (_ BitVec 32) Int) ListLongMap!3967)

(assert (=> b!334109 (= res!184235 (not (contains!2039 (getCurrentListMap!1522 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!334110 () Bool)

(declare-fun res!184233 () Bool)

(assert (=> b!334110 (=> (not res!184233) (not e!205112))))

(assert (=> b!334110 (= res!184233 (arrayContainsKey!0 _keys!1895 k0!1348 (index!14856 lt!159458)))))

(declare-fun mapIsEmpty!11670 () Bool)

(assert (=> mapIsEmpty!11670 mapRes!11670))

(declare-fun b!334111 () Bool)

(declare-fun res!184236 () Bool)

(assert (=> b!334111 (=> (not res!184236) (not e!205116))))

(declare-datatypes ((List!4683 0))(
  ( (Nil!4680) (Cons!4679 (h!5535 (_ BitVec 64)) (t!9779 List!4683)) )
))
(declare-fun arrayNoDuplicates!0 (array!17287 (_ BitVec 32) List!4683) Bool)

(assert (=> b!334111 (= res!184236 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4680))))

(declare-fun mapNonEmpty!11670 () Bool)

(declare-fun tp!24194 () Bool)

(assert (=> mapNonEmpty!11670 (= mapRes!11670 (and tp!24194 e!205111))))

(declare-fun mapRest!11670 () (Array (_ BitVec 32) ValueCell!3081))

(declare-fun mapValue!11670 () ValueCell!3081)

(declare-fun mapKey!11670 () (_ BitVec 32))

(assert (=> mapNonEmpty!11670 (= (arr!8172 _values!1525) (store mapRest!11670 mapKey!11670 mapValue!11670))))

(declare-fun b!334112 () Bool)

(declare-fun res!184237 () Bool)

(assert (=> b!334112 (=> (not res!184237) (not e!205116))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!334112 (= res!184237 (validKeyInArray!0 k0!1348))))

(assert (= (and start!33670 res!184238) b!334106))

(assert (= (and b!334106 res!184234) b!334102))

(assert (= (and b!334102 res!184231) b!334111))

(assert (= (and b!334111 res!184236) b!334112))

(assert (= (and b!334112 res!184237) b!334109))

(assert (= (and b!334109 res!184235) b!334103))

(assert (= (and b!334103 res!184232) b!334110))

(assert (= (and b!334110 res!184233) b!334107))

(assert (= (and b!334104 condMapEmpty!11670) mapIsEmpty!11670))

(assert (= (and b!334104 (not condMapEmpty!11670)) mapNonEmpty!11670))

(assert (= (and mapNonEmpty!11670 ((_ is ValueCellFull!3081) mapValue!11670)) b!334108))

(assert (= (and b!334104 ((_ is ValueCellFull!3081) mapDefault!11670)) b!334105))

(assert (= start!33670 b!334104))

(declare-fun m!338229 () Bool)

(assert (=> b!334109 m!338229))

(assert (=> b!334109 m!338229))

(declare-fun m!338231 () Bool)

(assert (=> b!334109 m!338231))

(declare-fun m!338233 () Bool)

(assert (=> b!334112 m!338233))

(declare-fun m!338235 () Bool)

(assert (=> b!334107 m!338235))

(declare-fun m!338237 () Bool)

(assert (=> b!334107 m!338237))

(declare-fun m!338239 () Bool)

(assert (=> b!334103 m!338239))

(declare-fun m!338241 () Bool)

(assert (=> b!334103 m!338241))

(declare-fun m!338243 () Bool)

(assert (=> b!334102 m!338243))

(declare-fun m!338245 () Bool)

(assert (=> mapNonEmpty!11670 m!338245))

(declare-fun m!338247 () Bool)

(assert (=> b!334111 m!338247))

(declare-fun m!338249 () Bool)

(assert (=> start!33670 m!338249))

(declare-fun m!338251 () Bool)

(assert (=> start!33670 m!338251))

(declare-fun m!338253 () Bool)

(assert (=> start!33670 m!338253))

(declare-fun m!338255 () Bool)

(assert (=> b!334110 m!338255))

(check-sat (not b!334111) (not b!334102) (not start!33670) b_and!14095 (not b!334110) (not b!334103) (not mapNonEmpty!11670) tp_is_empty!6849 (not b_next!6897) (not b!334107) (not b!334109) (not b!334112))
(check-sat b_and!14095 (not b_next!6897))
