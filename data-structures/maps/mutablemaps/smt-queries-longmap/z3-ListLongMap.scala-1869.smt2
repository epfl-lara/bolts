; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33658 () Bool)

(assert start!33658)

(declare-fun b_free!6885 () Bool)

(declare-fun b_next!6885 () Bool)

(assert (=> start!33658 (= b_free!6885 (not b_next!6885))))

(declare-fun tp!24158 () Bool)

(declare-fun b_and!14083 () Bool)

(assert (=> start!33658 (= tp!24158 b_and!14083)))

(declare-fun b!333904 () Bool)

(declare-fun res!184091 () Bool)

(declare-fun e!205007 () Bool)

(assert (=> b!333904 (=> (not res!184091) (not e!205007))))

(declare-datatypes ((array!17265 0))(
  ( (array!17266 (arr!8160 (Array (_ BitVec 32) (_ BitVec 64))) (size!8512 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17265)

(declare-datatypes ((List!4674 0))(
  ( (Nil!4671) (Cons!4670 (h!5526 (_ BitVec 64)) (t!9770 List!4674)) )
))
(declare-fun arrayNoDuplicates!0 (array!17265 (_ BitVec 32) List!4674) Bool)

(assert (=> b!333904 (= res!184091 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4671))))

(declare-fun b!333905 () Bool)

(declare-fun e!205003 () Bool)

(declare-fun e!205008 () Bool)

(declare-fun mapRes!11652 () Bool)

(assert (=> b!333905 (= e!205003 (and e!205008 mapRes!11652))))

(declare-fun condMapEmpty!11652 () Bool)

(declare-datatypes ((V!10093 0))(
  ( (V!10094 (val!3463 Int)) )
))
(declare-datatypes ((ValueCell!3075 0))(
  ( (ValueCellFull!3075 (v!5621 V!10093)) (EmptyCell!3075) )
))
(declare-datatypes ((array!17267 0))(
  ( (array!17268 (arr!8161 (Array (_ BitVec 32) ValueCell!3075)) (size!8513 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17267)

(declare-fun mapDefault!11652 () ValueCell!3075)

(assert (=> b!333905 (= condMapEmpty!11652 (= (arr!8161 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3075)) mapDefault!11652)))))

(declare-fun b!333906 () Bool)

(declare-fun tp_is_empty!6837 () Bool)

(assert (=> b!333906 (= e!205008 tp_is_empty!6837)))

(declare-fun res!184087 () Bool)

(assert (=> start!33658 (=> (not res!184087) (not e!205007))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33658 (= res!184087 (validMask!0 mask!2385))))

(assert (=> start!33658 e!205007))

(assert (=> start!33658 true))

(assert (=> start!33658 tp_is_empty!6837))

(assert (=> start!33658 tp!24158))

(declare-fun array_inv!6060 (array!17267) Bool)

(assert (=> start!33658 (and (array_inv!6060 _values!1525) e!205003)))

(declare-fun array_inv!6061 (array!17265) Bool)

(assert (=> start!33658 (array_inv!6061 _keys!1895)))

(declare-fun b!333907 () Bool)

(declare-fun res!184094 () Bool)

(assert (=> b!333907 (=> (not res!184094) (not e!205007))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!333907 (= res!184094 (and (= (size!8513 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8512 _keys!1895) (size!8513 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!11652 () Bool)

(assert (=> mapIsEmpty!11652 mapRes!11652))

(declare-fun b!333908 () Bool)

(declare-fun e!205004 () Bool)

(assert (=> b!333908 (= e!205007 e!205004)))

(declare-fun res!184090 () Bool)

(assert (=> b!333908 (=> (not res!184090) (not e!205004))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3166 0))(
  ( (MissingZero!3166 (index!14843 (_ BitVec 32))) (Found!3166 (index!14844 (_ BitVec 32))) (Intermediate!3166 (undefined!3978 Bool) (index!14845 (_ BitVec 32)) (x!33295 (_ BitVec 32))) (Undefined!3166) (MissingVacant!3166 (index!14846 (_ BitVec 32))) )
))
(declare-fun lt!159423 () SeekEntryResult!3166)

(get-info :version)

(assert (=> b!333908 (= res!184090 (and ((_ is Found!3166) lt!159423) (= (select (arr!8160 _keys!1895) (index!14844 lt!159423)) k0!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17265 (_ BitVec 32)) SeekEntryResult!3166)

(assert (=> b!333908 (= lt!159423 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!333909 () Bool)

(declare-fun e!205005 () Bool)

(assert (=> b!333909 (= e!205005 tp_is_empty!6837)))

(declare-fun mapNonEmpty!11652 () Bool)

(declare-fun tp!24159 () Bool)

(assert (=> mapNonEmpty!11652 (= mapRes!11652 (and tp!24159 e!205005))))

(declare-fun mapRest!11652 () (Array (_ BitVec 32) ValueCell!3075))

(declare-fun mapKey!11652 () (_ BitVec 32))

(declare-fun mapValue!11652 () ValueCell!3075)

(assert (=> mapNonEmpty!11652 (= (arr!8161 _values!1525) (store mapRest!11652 mapKey!11652 mapValue!11652))))

(declare-fun b!333910 () Bool)

(declare-fun res!184093 () Bool)

(assert (=> b!333910 (=> (not res!184093) (not e!205007))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17265 (_ BitVec 32)) Bool)

(assert (=> b!333910 (= res!184093 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!333911 () Bool)

(declare-fun res!184088 () Bool)

(assert (=> b!333911 (=> (not res!184088) (not e!205004))))

(declare-fun arrayContainsKey!0 (array!17265 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!333911 (= res!184088 (arrayContainsKey!0 _keys!1895 k0!1348 (index!14844 lt!159423)))))

(declare-fun b!333912 () Bool)

(declare-fun res!184092 () Bool)

(assert (=> b!333912 (=> (not res!184092) (not e!205007))))

(declare-fun zeroValue!1467 () V!10093)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10093)

(declare-datatypes ((tuple2!5034 0))(
  ( (tuple2!5035 (_1!2527 (_ BitVec 64)) (_2!2527 V!10093)) )
))
(declare-datatypes ((List!4675 0))(
  ( (Nil!4672) (Cons!4671 (h!5527 tuple2!5034) (t!9771 List!4675)) )
))
(declare-datatypes ((ListLongMap!3961 0))(
  ( (ListLongMap!3962 (toList!1996 List!4675)) )
))
(declare-fun contains!2036 (ListLongMap!3961 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1519 (array!17265 array!17267 (_ BitVec 32) (_ BitVec 32) V!10093 V!10093 (_ BitVec 32) Int) ListLongMap!3961)

(assert (=> b!333912 (= res!184092 (not (contains!2036 (getCurrentListMap!1519 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!333913 () Bool)

(assert (=> b!333913 (= e!205004 (not true))))

(assert (=> b!333913 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!10386 0))(
  ( (Unit!10387) )
))
(declare-fun lt!159422 () Unit!10386)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17265 (_ BitVec 64) (_ BitVec 32)) Unit!10386)

(assert (=> b!333913 (= lt!159422 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k0!1348 (index!14844 lt!159423)))))

(declare-fun b!333914 () Bool)

(declare-fun res!184089 () Bool)

(assert (=> b!333914 (=> (not res!184089) (not e!205007))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!333914 (= res!184089 (validKeyInArray!0 k0!1348))))

(assert (= (and start!33658 res!184087) b!333907))

(assert (= (and b!333907 res!184094) b!333910))

(assert (= (and b!333910 res!184093) b!333904))

(assert (= (and b!333904 res!184091) b!333914))

(assert (= (and b!333914 res!184089) b!333912))

(assert (= (and b!333912 res!184092) b!333908))

(assert (= (and b!333908 res!184090) b!333911))

(assert (= (and b!333911 res!184088) b!333913))

(assert (= (and b!333905 condMapEmpty!11652) mapIsEmpty!11652))

(assert (= (and b!333905 (not condMapEmpty!11652)) mapNonEmpty!11652))

(assert (= (and mapNonEmpty!11652 ((_ is ValueCellFull!3075) mapValue!11652)) b!333909))

(assert (= (and b!333905 ((_ is ValueCellFull!3075) mapDefault!11652)) b!333906))

(assert (= start!33658 b!333905))

(declare-fun m!338061 () Bool)

(assert (=> b!333913 m!338061))

(declare-fun m!338063 () Bool)

(assert (=> b!333913 m!338063))

(declare-fun m!338065 () Bool)

(assert (=> mapNonEmpty!11652 m!338065))

(declare-fun m!338067 () Bool)

(assert (=> b!333910 m!338067))

(declare-fun m!338069 () Bool)

(assert (=> b!333912 m!338069))

(assert (=> b!333912 m!338069))

(declare-fun m!338071 () Bool)

(assert (=> b!333912 m!338071))

(declare-fun m!338073 () Bool)

(assert (=> start!33658 m!338073))

(declare-fun m!338075 () Bool)

(assert (=> start!33658 m!338075))

(declare-fun m!338077 () Bool)

(assert (=> start!33658 m!338077))

(declare-fun m!338079 () Bool)

(assert (=> b!333911 m!338079))

(declare-fun m!338081 () Bool)

(assert (=> b!333908 m!338081))

(declare-fun m!338083 () Bool)

(assert (=> b!333908 m!338083))

(declare-fun m!338085 () Bool)

(assert (=> b!333914 m!338085))

(declare-fun m!338087 () Bool)

(assert (=> b!333904 m!338087))

(check-sat (not b!333908) (not b_next!6885) (not b!333912) (not b!333911) (not mapNonEmpty!11652) (not b!333913) tp_is_empty!6837 b_and!14083 (not b!333904) (not b!333914) (not start!33658) (not b!333910))
(check-sat b_and!14083 (not b_next!6885))
