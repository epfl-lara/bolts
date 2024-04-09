; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82708 () Bool)

(assert start!82708)

(declare-fun b_free!18813 () Bool)

(declare-fun b_next!18813 () Bool)

(assert (=> start!82708 (= b_free!18813 (not b_next!18813))))

(declare-fun tp!65559 () Bool)

(declare-fun b_and!30319 () Bool)

(assert (=> start!82708 (= tp!65559 b_and!30319)))

(declare-fun b!963842 () Bool)

(declare-fun e!543439 () Bool)

(declare-fun tp_is_empty!21615 () Bool)

(assert (=> b!963842 (= e!543439 tp_is_empty!21615)))

(declare-fun b!963843 () Bool)

(declare-fun e!543436 () Bool)

(assert (=> b!963843 (= e!543436 true)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33803 0))(
  ( (V!33804 (val!10858 Int)) )
))
(declare-datatypes ((ValueCell!10326 0))(
  ( (ValueCellFull!10326 (v!13416 V!33803)) (EmptyCell!10326) )
))
(declare-datatypes ((array!59305 0))(
  ( (array!59306 (arr!28517 (Array (_ BitVec 32) ValueCell!10326)) (size!28997 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59305)

(declare-datatypes ((array!59307 0))(
  ( (array!59308 (arr!28518 (Array (_ BitVec 32) (_ BitVec 64))) (size!28998 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59307)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!33803)

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun minValue!1342 () V!33803)

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-datatypes ((tuple2!14036 0))(
  ( (tuple2!14037 (_1!7028 (_ BitVec 64)) (_2!7028 V!33803)) )
))
(declare-datatypes ((List!19914 0))(
  ( (Nil!19911) (Cons!19910 (h!21072 tuple2!14036) (t!28285 List!19914)) )
))
(declare-datatypes ((ListLongMap!12747 0))(
  ( (ListLongMap!12748 (toList!6389 List!19914)) )
))
(declare-fun contains!5443 (ListLongMap!12747 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3574 (array!59307 array!59305 (_ BitVec 32) (_ BitVec 32) V!33803 V!33803 (_ BitVec 32) Int) ListLongMap!12747)

(assert (=> b!963843 (contains!5443 (getCurrentListMap!3574 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 newFrom!159 defaultEntry!1403) (select (arr!28518 _keys!1686) i!803))))

(declare-datatypes ((Unit!32233 0))(
  ( (Unit!32234) )
))
(declare-fun lt!430973 () Unit!32233)

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun lemmaInListMapFromThenInFromSmaller!18 (array!59307 array!59305 (_ BitVec 32) (_ BitVec 32) V!33803 V!33803 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Int) Unit!32233)

(assert (=> b!963843 (= lt!430973 (lemmaInListMapFromThenInFromSmaller!18 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) newFrom!159 i!803 defaultEntry!1403))))

(declare-fun b!963844 () Bool)

(declare-fun e!543434 () Bool)

(declare-fun e!543438 () Bool)

(declare-fun mapRes!34417 () Bool)

(assert (=> b!963844 (= e!543434 (and e!543438 mapRes!34417))))

(declare-fun condMapEmpty!34417 () Bool)

(declare-fun mapDefault!34417 () ValueCell!10326)

(assert (=> b!963844 (= condMapEmpty!34417 (= (arr!28517 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10326)) mapDefault!34417)))))

(declare-fun b!963845 () Bool)

(declare-fun e!543437 () Bool)

(assert (=> b!963845 (= e!543437 (not e!543436))))

(declare-fun res!645215 () Bool)

(assert (=> b!963845 (=> res!645215 e!543436)))

(assert (=> b!963845 (= res!645215 (or (bvslt (bvsub from!2084 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvsub from!2084 #b00000000000000000000000000000001) (size!28998 _keys!1686)) (bvslt i!803 (bvsub from!2084 #b00000000000000000000000000000001))))))

(assert (=> b!963845 (contains!5443 (getCurrentListMap!3574 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28518 _keys!1686) i!803))))

(declare-fun lt!430974 () Unit!32233)

(declare-fun lemmaInListMapFromThenInFromMinusOne!25 (array!59307 array!59305 (_ BitVec 32) (_ BitVec 32) V!33803 V!33803 (_ BitVec 32) (_ BitVec 32) Int) Unit!32233)

(assert (=> b!963845 (= lt!430974 (lemmaInListMapFromThenInFromMinusOne!25 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!963846 () Bool)

(declare-fun res!645213 () Bool)

(assert (=> b!963846 (=> (not res!645213) (not e!543437))))

(assert (=> b!963846 (= res!645213 (contains!5443 (getCurrentListMap!3574 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28518 _keys!1686) i!803)))))

(declare-fun mapIsEmpty!34417 () Bool)

(assert (=> mapIsEmpty!34417 mapRes!34417))

(declare-fun b!963847 () Bool)

(declare-fun res!645216 () Bool)

(assert (=> b!963847 (=> (not res!645216) (not e!543437))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!963847 (= res!645216 (validKeyInArray!0 (select (arr!28518 _keys!1686) i!803)))))

(declare-fun b!963848 () Bool)

(declare-fun res!645214 () Bool)

(assert (=> b!963848 (=> (not res!645214) (not e!543437))))

(declare-datatypes ((List!19915 0))(
  ( (Nil!19912) (Cons!19911 (h!21073 (_ BitVec 64)) (t!28286 List!19915)) )
))
(declare-fun arrayNoDuplicates!0 (array!59307 (_ BitVec 32) List!19915) Bool)

(assert (=> b!963848 (= res!645214 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19912))))

(declare-fun b!963849 () Bool)

(declare-fun res!645210 () Bool)

(assert (=> b!963849 (=> (not res!645210) (not e!543437))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59307 (_ BitVec 32)) Bool)

(assert (=> b!963849 (= res!645210 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun mapNonEmpty!34417 () Bool)

(declare-fun tp!65560 () Bool)

(assert (=> mapNonEmpty!34417 (= mapRes!34417 (and tp!65560 e!543439))))

(declare-fun mapValue!34417 () ValueCell!10326)

(declare-fun mapRest!34417 () (Array (_ BitVec 32) ValueCell!10326))

(declare-fun mapKey!34417 () (_ BitVec 32))

(assert (=> mapNonEmpty!34417 (= (arr!28517 _values!1400) (store mapRest!34417 mapKey!34417 mapValue!34417))))

(declare-fun b!963850 () Bool)

(declare-fun res!645211 () Bool)

(assert (=> b!963850 (=> (not res!645211) (not e!543437))))

(assert (=> b!963850 (= res!645211 (bvsgt from!2084 newFrom!159))))

(declare-fun res!645212 () Bool)

(assert (=> start!82708 (=> (not res!645212) (not e!543437))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82708 (= res!645212 (validMask!0 mask!2110))))

(assert (=> start!82708 e!543437))

(assert (=> start!82708 true))

(declare-fun array_inv!22005 (array!59305) Bool)

(assert (=> start!82708 (and (array_inv!22005 _values!1400) e!543434)))

(declare-fun array_inv!22006 (array!59307) Bool)

(assert (=> start!82708 (array_inv!22006 _keys!1686)))

(assert (=> start!82708 tp!65559))

(assert (=> start!82708 tp_is_empty!21615))

(declare-fun b!963851 () Bool)

(assert (=> b!963851 (= e!543438 tp_is_empty!21615)))

(declare-fun b!963852 () Bool)

(declare-fun res!645217 () Bool)

(assert (=> b!963852 (=> (not res!645217) (not e!543437))))

(assert (=> b!963852 (= res!645217 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28998 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28998 _keys!1686))))))

(declare-fun b!963853 () Bool)

(declare-fun res!645218 () Bool)

(assert (=> b!963853 (=> (not res!645218) (not e!543437))))

(assert (=> b!963853 (= res!645218 (and (= (size!28997 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28998 _keys!1686) (size!28997 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(assert (= (and start!82708 res!645212) b!963853))

(assert (= (and b!963853 res!645218) b!963849))

(assert (= (and b!963849 res!645210) b!963848))

(assert (= (and b!963848 res!645214) b!963852))

(assert (= (and b!963852 res!645217) b!963847))

(assert (= (and b!963847 res!645216) b!963846))

(assert (= (and b!963846 res!645213) b!963850))

(assert (= (and b!963850 res!645211) b!963845))

(assert (= (and b!963845 (not res!645215)) b!963843))

(assert (= (and b!963844 condMapEmpty!34417) mapIsEmpty!34417))

(assert (= (and b!963844 (not condMapEmpty!34417)) mapNonEmpty!34417))

(get-info :version)

(assert (= (and mapNonEmpty!34417 ((_ is ValueCellFull!10326) mapValue!34417)) b!963842))

(assert (= (and b!963844 ((_ is ValueCellFull!10326) mapDefault!34417)) b!963851))

(assert (= start!82708 b!963844))

(declare-fun m!893253 () Bool)

(assert (=> b!963849 m!893253))

(declare-fun m!893255 () Bool)

(assert (=> mapNonEmpty!34417 m!893255))

(declare-fun m!893257 () Bool)

(assert (=> b!963848 m!893257))

(declare-fun m!893259 () Bool)

(assert (=> b!963846 m!893259))

(declare-fun m!893261 () Bool)

(assert (=> b!963846 m!893261))

(assert (=> b!963846 m!893259))

(assert (=> b!963846 m!893261))

(declare-fun m!893263 () Bool)

(assert (=> b!963846 m!893263))

(declare-fun m!893265 () Bool)

(assert (=> start!82708 m!893265))

(declare-fun m!893267 () Bool)

(assert (=> start!82708 m!893267))

(declare-fun m!893269 () Bool)

(assert (=> start!82708 m!893269))

(assert (=> b!963847 m!893261))

(assert (=> b!963847 m!893261))

(declare-fun m!893271 () Bool)

(assert (=> b!963847 m!893271))

(declare-fun m!893273 () Bool)

(assert (=> b!963843 m!893273))

(assert (=> b!963843 m!893261))

(assert (=> b!963843 m!893273))

(assert (=> b!963843 m!893261))

(declare-fun m!893275 () Bool)

(assert (=> b!963843 m!893275))

(declare-fun m!893277 () Bool)

(assert (=> b!963843 m!893277))

(declare-fun m!893279 () Bool)

(assert (=> b!963845 m!893279))

(assert (=> b!963845 m!893261))

(assert (=> b!963845 m!893279))

(assert (=> b!963845 m!893261))

(declare-fun m!893281 () Bool)

(assert (=> b!963845 m!893281))

(declare-fun m!893283 () Bool)

(assert (=> b!963845 m!893283))

(check-sat (not start!82708) (not b!963845) (not b!963846) (not b!963848) (not b!963847) b_and!30319 (not b!963843) (not mapNonEmpty!34417) (not b_next!18813) tp_is_empty!21615 (not b!963849))
(check-sat b_and!30319 (not b_next!18813))
