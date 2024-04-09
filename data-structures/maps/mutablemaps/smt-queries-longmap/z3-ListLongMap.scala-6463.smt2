; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82648 () Bool)

(assert start!82648)

(declare-fun b_free!18753 () Bool)

(declare-fun b_next!18753 () Bool)

(assert (=> start!82648 (= b_free!18753 (not b_next!18753))))

(declare-fun tp!65379 () Bool)

(declare-fun b_and!30259 () Bool)

(assert (=> start!82648 (= tp!65379 b_and!30259)))

(declare-fun mapNonEmpty!34327 () Bool)

(declare-fun mapRes!34327 () Bool)

(declare-fun tp!65380 () Bool)

(declare-fun e!542982 () Bool)

(assert (=> mapNonEmpty!34327 (= mapRes!34327 (and tp!65380 e!542982))))

(declare-datatypes ((V!33723 0))(
  ( (V!33724 (val!10828 Int)) )
))
(declare-datatypes ((ValueCell!10296 0))(
  ( (ValueCellFull!10296 (v!13386 V!33723)) (EmptyCell!10296) )
))
(declare-fun mapRest!34327 () (Array (_ BitVec 32) ValueCell!10296))

(declare-datatypes ((array!59187 0))(
  ( (array!59188 (arr!28458 (Array (_ BitVec 32) ValueCell!10296)) (size!28938 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59187)

(declare-fun mapKey!34327 () (_ BitVec 32))

(declare-fun mapValue!34327 () ValueCell!10296)

(assert (=> mapNonEmpty!34327 (= (arr!28458 _values!1400) (store mapRest!34327 mapKey!34327 mapValue!34327))))

(declare-fun mapIsEmpty!34327 () Bool)

(assert (=> mapIsEmpty!34327 mapRes!34327))

(declare-fun b!962847 () Bool)

(declare-fun res!644485 () Bool)

(declare-fun e!542981 () Bool)

(assert (=> b!962847 (=> (not res!644485) (not e!542981))))

(declare-datatypes ((array!59189 0))(
  ( (array!59190 (arr!28459 (Array (_ BitVec 32) (_ BitVec 64))) (size!28939 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59189)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!962847 (= res!644485 (validKeyInArray!0 (select (arr!28459 _keys!1686) i!803)))))

(declare-fun b!962848 () Bool)

(declare-fun e!542983 () Bool)

(declare-fun tp_is_empty!21555 () Bool)

(assert (=> b!962848 (= e!542983 tp_is_empty!21555)))

(declare-fun b!962849 () Bool)

(declare-fun res!644487 () Bool)

(assert (=> b!962849 (=> (not res!644487) (not e!542981))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59189 (_ BitVec 32)) Bool)

(assert (=> b!962849 (= res!644487 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!962850 () Bool)

(declare-fun res!644491 () Bool)

(assert (=> b!962850 (=> (not res!644491) (not e!542981))))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(assert (=> b!962850 (= res!644491 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28939 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28939 _keys!1686))))))

(declare-fun b!962851 () Bool)

(assert (=> b!962851 (= e!542981 (not true))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun minValue!1342 () V!33723)

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!33723)

(declare-datatypes ((tuple2!13990 0))(
  ( (tuple2!13991 (_1!7005 (_ BitVec 64)) (_2!7005 V!33723)) )
))
(declare-datatypes ((List!19873 0))(
  ( (Nil!19870) (Cons!19869 (h!21031 tuple2!13990) (t!28244 List!19873)) )
))
(declare-datatypes ((ListLongMap!12701 0))(
  ( (ListLongMap!12702 (toList!6366 List!19873)) )
))
(declare-fun contains!5420 (ListLongMap!12701 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3551 (array!59189 array!59187 (_ BitVec 32) (_ BitVec 32) V!33723 V!33723 (_ BitVec 32) Int) ListLongMap!12701)

(assert (=> b!962851 (contains!5420 (getCurrentListMap!3551 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28459 _keys!1686) i!803))))

(declare-datatypes ((Unit!32197 0))(
  ( (Unit!32198) )
))
(declare-fun lt!430878 () Unit!32197)

(declare-fun lemmaInListMapFromThenInFromMinusOne!7 (array!59189 array!59187 (_ BitVec 32) (_ BitVec 32) V!33723 V!33723 (_ BitVec 32) (_ BitVec 32) Int) Unit!32197)

(assert (=> b!962851 (= lt!430878 (lemmaInListMapFromThenInFromMinusOne!7 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!962853 () Bool)

(declare-fun res!644490 () Bool)

(assert (=> b!962853 (=> (not res!644490) (not e!542981))))

(assert (=> b!962853 (= res!644490 (contains!5420 (getCurrentListMap!3551 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28459 _keys!1686) i!803)))))

(declare-fun b!962854 () Bool)

(declare-fun res!644489 () Bool)

(assert (=> b!962854 (=> (not res!644489) (not e!542981))))

(declare-datatypes ((List!19874 0))(
  ( (Nil!19871) (Cons!19870 (h!21032 (_ BitVec 64)) (t!28245 List!19874)) )
))
(declare-fun arrayNoDuplicates!0 (array!59189 (_ BitVec 32) List!19874) Bool)

(assert (=> b!962854 (= res!644489 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19871))))

(declare-fun b!962855 () Bool)

(assert (=> b!962855 (= e!542982 tp_is_empty!21555)))

(declare-fun b!962856 () Bool)

(declare-fun e!542980 () Bool)

(assert (=> b!962856 (= e!542980 (and e!542983 mapRes!34327))))

(declare-fun condMapEmpty!34327 () Bool)

(declare-fun mapDefault!34327 () ValueCell!10296)

(assert (=> b!962856 (= condMapEmpty!34327 (= (arr!28458 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10296)) mapDefault!34327)))))

(declare-fun b!962857 () Bool)

(declare-fun res!644492 () Bool)

(assert (=> b!962857 (=> (not res!644492) (not e!542981))))

(assert (=> b!962857 (= res!644492 (and (= (size!28938 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28939 _keys!1686) (size!28938 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun res!644488 () Bool)

(assert (=> start!82648 (=> (not res!644488) (not e!542981))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82648 (= res!644488 (validMask!0 mask!2110))))

(assert (=> start!82648 e!542981))

(assert (=> start!82648 true))

(declare-fun array_inv!21973 (array!59187) Bool)

(assert (=> start!82648 (and (array_inv!21973 _values!1400) e!542980)))

(declare-fun array_inv!21974 (array!59189) Bool)

(assert (=> start!82648 (array_inv!21974 _keys!1686)))

(assert (=> start!82648 tp!65379))

(assert (=> start!82648 tp_is_empty!21555))

(declare-fun b!962852 () Bool)

(declare-fun res!644486 () Bool)

(assert (=> b!962852 (=> (not res!644486) (not e!542981))))

(assert (=> b!962852 (= res!644486 (bvsgt from!2084 newFrom!159))))

(assert (= (and start!82648 res!644488) b!962857))

(assert (= (and b!962857 res!644492) b!962849))

(assert (= (and b!962849 res!644487) b!962854))

(assert (= (and b!962854 res!644489) b!962850))

(assert (= (and b!962850 res!644491) b!962847))

(assert (= (and b!962847 res!644485) b!962853))

(assert (= (and b!962853 res!644490) b!962852))

(assert (= (and b!962852 res!644486) b!962851))

(assert (= (and b!962856 condMapEmpty!34327) mapIsEmpty!34327))

(assert (= (and b!962856 (not condMapEmpty!34327)) mapNonEmpty!34327))

(get-info :version)

(assert (= (and mapNonEmpty!34327 ((_ is ValueCellFull!10296) mapValue!34327)) b!962855))

(assert (= (and b!962856 ((_ is ValueCellFull!10296) mapDefault!34327)) b!962848))

(assert (= start!82648 b!962856))

(declare-fun m!892467 () Bool)

(assert (=> mapNonEmpty!34327 m!892467))

(declare-fun m!892469 () Bool)

(assert (=> b!962851 m!892469))

(declare-fun m!892471 () Bool)

(assert (=> b!962851 m!892471))

(assert (=> b!962851 m!892469))

(assert (=> b!962851 m!892471))

(declare-fun m!892473 () Bool)

(assert (=> b!962851 m!892473))

(declare-fun m!892475 () Bool)

(assert (=> b!962851 m!892475))

(declare-fun m!892477 () Bool)

(assert (=> b!962853 m!892477))

(assert (=> b!962853 m!892471))

(assert (=> b!962853 m!892477))

(assert (=> b!962853 m!892471))

(declare-fun m!892479 () Bool)

(assert (=> b!962853 m!892479))

(assert (=> b!962847 m!892471))

(assert (=> b!962847 m!892471))

(declare-fun m!892481 () Bool)

(assert (=> b!962847 m!892481))

(declare-fun m!892483 () Bool)

(assert (=> b!962849 m!892483))

(declare-fun m!892485 () Bool)

(assert (=> b!962854 m!892485))

(declare-fun m!892487 () Bool)

(assert (=> start!82648 m!892487))

(declare-fun m!892489 () Bool)

(assert (=> start!82648 m!892489))

(declare-fun m!892491 () Bool)

(assert (=> start!82648 m!892491))

(check-sat tp_is_empty!21555 (not start!82648) (not b!962853) b_and!30259 (not b!962851) (not b!962849) (not mapNonEmpty!34327) (not b_next!18753) (not b!962854) (not b!962847))
(check-sat b_and!30259 (not b_next!18753))
