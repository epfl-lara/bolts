; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82846 () Bool)

(assert start!82846)

(declare-fun b_free!18945 () Bool)

(declare-fun b_next!18945 () Bool)

(assert (=> start!82846 (= b_free!18945 (not b_next!18945))))

(declare-fun tp!65965 () Bool)

(declare-fun b_and!30451 () Bool)

(assert (=> start!82846 (= tp!65965 b_and!30451)))

(declare-fun res!646672 () Bool)

(declare-fun e!544546 () Bool)

(assert (=> start!82846 (=> (not res!646672) (not e!544546))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82846 (= res!646672 (validMask!0 mask!2110))))

(assert (=> start!82846 e!544546))

(assert (=> start!82846 true))

(declare-datatypes ((V!33987 0))(
  ( (V!33988 (val!10927 Int)) )
))
(declare-datatypes ((ValueCell!10395 0))(
  ( (ValueCellFull!10395 (v!13485 V!33987)) (EmptyCell!10395) )
))
(declare-datatypes ((array!59569 0))(
  ( (array!59570 (arr!28649 (Array (_ BitVec 32) ValueCell!10395)) (size!29129 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59569)

(declare-fun e!544549 () Bool)

(declare-fun array_inv!22091 (array!59569) Bool)

(assert (=> start!82846 (and (array_inv!22091 _values!1400) e!544549)))

(declare-datatypes ((array!59571 0))(
  ( (array!59572 (arr!28650 (Array (_ BitVec 32) (_ BitVec 64))) (size!29130 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59571)

(declare-fun array_inv!22092 (array!59571) Bool)

(assert (=> start!82846 (array_inv!22092 _keys!1686)))

(assert (=> start!82846 tp!65965))

(declare-fun tp_is_empty!21753 () Bool)

(assert (=> start!82846 tp_is_empty!21753))

(declare-fun b!965924 () Bool)

(declare-fun e!544548 () Bool)

(declare-fun mapRes!34624 () Bool)

(assert (=> b!965924 (= e!544549 (and e!544548 mapRes!34624))))

(declare-fun condMapEmpty!34624 () Bool)

(declare-fun mapDefault!34624 () ValueCell!10395)

(assert (=> b!965924 (= condMapEmpty!34624 (= (arr!28649 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10395)) mapDefault!34624)))))

(declare-fun b!965925 () Bool)

(declare-fun res!646671 () Bool)

(assert (=> b!965925 (=> (not res!646671) (not e!544546))))

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!965925 (= res!646671 (validKeyInArray!0 (select (arr!28650 _keys!1686) i!803)))))

(declare-fun mapNonEmpty!34624 () Bool)

(declare-fun tp!65964 () Bool)

(declare-fun e!544547 () Bool)

(assert (=> mapNonEmpty!34624 (= mapRes!34624 (and tp!65964 e!544547))))

(declare-fun mapKey!34624 () (_ BitVec 32))

(declare-fun mapValue!34624 () ValueCell!10395)

(declare-fun mapRest!34624 () (Array (_ BitVec 32) ValueCell!10395))

(assert (=> mapNonEmpty!34624 (= (arr!28649 _values!1400) (store mapRest!34624 mapKey!34624 mapValue!34624))))

(declare-fun b!965926 () Bool)

(declare-fun res!646674 () Bool)

(assert (=> b!965926 (=> (not res!646674) (not e!544546))))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(assert (=> b!965926 (= res!646674 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29130 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29130 _keys!1686))))))

(declare-fun mapIsEmpty!34624 () Bool)

(assert (=> mapIsEmpty!34624 mapRes!34624))

(declare-fun b!965927 () Bool)

(assert (=> b!965927 (= e!544546 false)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun minValue!1342 () V!33987)

(declare-fun lt!431238 () Bool)

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!33987)

(declare-datatypes ((tuple2!14132 0))(
  ( (tuple2!14133 (_1!7076 (_ BitVec 64)) (_2!7076 V!33987)) )
))
(declare-datatypes ((List!20009 0))(
  ( (Nil!20006) (Cons!20005 (h!21167 tuple2!14132) (t!28380 List!20009)) )
))
(declare-datatypes ((ListLongMap!12843 0))(
  ( (ListLongMap!12844 (toList!6437 List!20009)) )
))
(declare-fun contains!5488 (ListLongMap!12843 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3622 (array!59571 array!59569 (_ BitVec 32) (_ BitVec 32) V!33987 V!33987 (_ BitVec 32) Int) ListLongMap!12843)

(assert (=> b!965927 (= lt!431238 (contains!5488 (getCurrentListMap!3622 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28650 _keys!1686) i!803)))))

(declare-fun b!965928 () Bool)

(declare-fun res!646675 () Bool)

(assert (=> b!965928 (=> (not res!646675) (not e!544546))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59571 (_ BitVec 32)) Bool)

(assert (=> b!965928 (= res!646675 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!965929 () Bool)

(declare-fun res!646673 () Bool)

(assert (=> b!965929 (=> (not res!646673) (not e!544546))))

(assert (=> b!965929 (= res!646673 (and (= (size!29129 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29130 _keys!1686) (size!29129 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!965930 () Bool)

(declare-fun res!646676 () Bool)

(assert (=> b!965930 (=> (not res!646676) (not e!544546))))

(declare-datatypes ((List!20010 0))(
  ( (Nil!20007) (Cons!20006 (h!21168 (_ BitVec 64)) (t!28381 List!20010)) )
))
(declare-fun arrayNoDuplicates!0 (array!59571 (_ BitVec 32) List!20010) Bool)

(assert (=> b!965930 (= res!646676 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20007))))

(declare-fun b!965931 () Bool)

(assert (=> b!965931 (= e!544548 tp_is_empty!21753)))

(declare-fun b!965932 () Bool)

(assert (=> b!965932 (= e!544547 tp_is_empty!21753)))

(assert (= (and start!82846 res!646672) b!965929))

(assert (= (and b!965929 res!646673) b!965928))

(assert (= (and b!965928 res!646675) b!965930))

(assert (= (and b!965930 res!646676) b!965926))

(assert (= (and b!965926 res!646674) b!965925))

(assert (= (and b!965925 res!646671) b!965927))

(assert (= (and b!965924 condMapEmpty!34624) mapIsEmpty!34624))

(assert (= (and b!965924 (not condMapEmpty!34624)) mapNonEmpty!34624))

(get-info :version)

(assert (= (and mapNonEmpty!34624 ((_ is ValueCellFull!10395) mapValue!34624)) b!965932))

(assert (= (and b!965924 ((_ is ValueCellFull!10395) mapDefault!34624)) b!965931))

(assert (= start!82846 b!965924))

(declare-fun m!894915 () Bool)

(assert (=> b!965928 m!894915))

(declare-fun m!894917 () Bool)

(assert (=> b!965925 m!894917))

(assert (=> b!965925 m!894917))

(declare-fun m!894919 () Bool)

(assert (=> b!965925 m!894919))

(declare-fun m!894921 () Bool)

(assert (=> start!82846 m!894921))

(declare-fun m!894923 () Bool)

(assert (=> start!82846 m!894923))

(declare-fun m!894925 () Bool)

(assert (=> start!82846 m!894925))

(declare-fun m!894927 () Bool)

(assert (=> b!965927 m!894927))

(assert (=> b!965927 m!894917))

(assert (=> b!965927 m!894927))

(assert (=> b!965927 m!894917))

(declare-fun m!894929 () Bool)

(assert (=> b!965927 m!894929))

(declare-fun m!894931 () Bool)

(assert (=> mapNonEmpty!34624 m!894931))

(declare-fun m!894933 () Bool)

(assert (=> b!965930 m!894933))

(check-sat (not b!965927) (not mapNonEmpty!34624) b_and!30451 (not b_next!18945) (not b!965925) (not b!965930) (not b!965928) tp_is_empty!21753 (not start!82846))
(check-sat b_and!30451 (not b_next!18945))
