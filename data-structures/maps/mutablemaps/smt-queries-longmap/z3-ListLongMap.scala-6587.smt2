; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83436 () Bool)

(assert start!83436)

(declare-fun b_free!19401 () Bool)

(declare-fun b_next!19401 () Bool)

(assert (=> start!83436 (= b_free!19401 (not b_next!19401))))

(declare-fun tp!67482 () Bool)

(declare-fun b_and!31021 () Bool)

(assert (=> start!83436 (= tp!67482 b_and!31021)))

(declare-fun b!973954 () Bool)

(declare-fun res!652069 () Bool)

(declare-fun e!549007 () Bool)

(assert (=> b!973954 (=> (not res!652069) (not e!549007))))

(declare-datatypes ((array!60619 0))(
  ( (array!60620 (arr!29169 (Array (_ BitVec 32) (_ BitVec 64))) (size!29649 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60619)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!973954 (= res!652069 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29649 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29649 _keys!1717))))))

(declare-fun b!973955 () Bool)

(declare-fun res!652067 () Bool)

(assert (=> b!973955 (=> (not res!652067) (not e!549007))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34715 0))(
  ( (V!34716 (val!11200 Int)) )
))
(declare-datatypes ((ValueCell!10668 0))(
  ( (ValueCellFull!10668 (v!13759 V!34715)) (EmptyCell!10668) )
))
(declare-datatypes ((array!60621 0))(
  ( (array!60622 (arr!29170 (Array (_ BitVec 32) ValueCell!10668)) (size!29650 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60621)

(declare-fun zeroValue!1367 () V!34715)

(declare-fun minValue!1367 () V!34715)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-datatypes ((tuple2!14484 0))(
  ( (tuple2!14485 (_1!7252 (_ BitVec 64)) (_2!7252 V!34715)) )
))
(declare-datatypes ((List!20362 0))(
  ( (Nil!20359) (Cons!20358 (h!21520 tuple2!14484) (t!28847 List!20362)) )
))
(declare-datatypes ((ListLongMap!13195 0))(
  ( (ListLongMap!13196 (toList!6613 List!20362)) )
))
(declare-fun contains!5655 (ListLongMap!13195 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3798 (array!60619 array!60621 (_ BitVec 32) (_ BitVec 32) V!34715 V!34715 (_ BitVec 32) Int) ListLongMap!13195)

(assert (=> b!973955 (= res!652067 (contains!5655 (getCurrentListMap!3798 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29169 _keys!1717) i!822)))))

(declare-fun b!973956 () Bool)

(declare-fun res!652066 () Bool)

(assert (=> b!973956 (=> (not res!652066) (not e!549007))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60619 (_ BitVec 32)) Bool)

(assert (=> b!973956 (= res!652066 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun mapNonEmpty!35458 () Bool)

(declare-fun mapRes!35458 () Bool)

(declare-fun tp!67483 () Bool)

(declare-fun e!549009 () Bool)

(assert (=> mapNonEmpty!35458 (= mapRes!35458 (and tp!67483 e!549009))))

(declare-fun mapRest!35458 () (Array (_ BitVec 32) ValueCell!10668))

(declare-fun mapValue!35458 () ValueCell!10668)

(declare-fun mapKey!35458 () (_ BitVec 32))

(assert (=> mapNonEmpty!35458 (= (arr!29170 _values!1425) (store mapRest!35458 mapKey!35458 mapValue!35458))))

(declare-fun b!973957 () Bool)

(declare-fun e!549006 () Bool)

(declare-fun tp_is_empty!22299 () Bool)

(assert (=> b!973957 (= e!549006 tp_is_empty!22299)))

(declare-fun b!973959 () Bool)

(declare-fun res!652071 () Bool)

(assert (=> b!973959 (=> (not res!652071) (not e!549007))))

(assert (=> b!973959 (= res!652071 (and (= (size!29650 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29649 _keys!1717) (size!29650 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!973960 () Bool)

(declare-fun res!652068 () Bool)

(assert (=> b!973960 (=> (not res!652068) (not e!549007))))

(declare-datatypes ((List!20363 0))(
  ( (Nil!20360) (Cons!20359 (h!21521 (_ BitVec 64)) (t!28848 List!20363)) )
))
(declare-fun arrayNoDuplicates!0 (array!60619 (_ BitVec 32) List!20363) Bool)

(assert (=> b!973960 (= res!652068 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20360))))

(declare-fun b!973961 () Bool)

(declare-fun res!652070 () Bool)

(assert (=> b!973961 (=> (not res!652070) (not e!549007))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!973961 (= res!652070 (validKeyInArray!0 (select (arr!29169 _keys!1717) i!822)))))

(declare-fun b!973962 () Bool)

(declare-fun e!549008 () Bool)

(assert (=> b!973962 (= e!549008 (and e!549006 mapRes!35458))))

(declare-fun condMapEmpty!35458 () Bool)

(declare-fun mapDefault!35458 () ValueCell!10668)

(assert (=> b!973962 (= condMapEmpty!35458 (= (arr!29170 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10668)) mapDefault!35458)))))

(declare-fun b!973958 () Bool)

(assert (=> b!973958 (= e!549009 tp_is_empty!22299)))

(declare-fun res!652072 () Bool)

(assert (=> start!83436 (=> (not res!652072) (not e!549007))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83436 (= res!652072 (validMask!0 mask!2147))))

(assert (=> start!83436 e!549007))

(assert (=> start!83436 true))

(declare-fun array_inv!22461 (array!60621) Bool)

(assert (=> start!83436 (and (array_inv!22461 _values!1425) e!549008)))

(assert (=> start!83436 tp_is_empty!22299))

(assert (=> start!83436 tp!67482))

(declare-fun array_inv!22462 (array!60619) Bool)

(assert (=> start!83436 (array_inv!22462 _keys!1717)))

(declare-fun mapIsEmpty!35458 () Bool)

(assert (=> mapIsEmpty!35458 mapRes!35458))

(declare-fun b!973963 () Bool)

(assert (=> b!973963 (= e!549007 false)))

(declare-fun lt!432682 () ListLongMap!13195)

(assert (=> b!973963 (= lt!432682 (getCurrentListMap!3798 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(assert (= (and start!83436 res!652072) b!973959))

(assert (= (and b!973959 res!652071) b!973956))

(assert (= (and b!973956 res!652066) b!973960))

(assert (= (and b!973960 res!652068) b!973954))

(assert (= (and b!973954 res!652069) b!973961))

(assert (= (and b!973961 res!652070) b!973955))

(assert (= (and b!973955 res!652067) b!973963))

(assert (= (and b!973962 condMapEmpty!35458) mapIsEmpty!35458))

(assert (= (and b!973962 (not condMapEmpty!35458)) mapNonEmpty!35458))

(get-info :version)

(assert (= (and mapNonEmpty!35458 ((_ is ValueCellFull!10668) mapValue!35458)) b!973958))

(assert (= (and b!973962 ((_ is ValueCellFull!10668) mapDefault!35458)) b!973957))

(assert (= start!83436 b!973962))

(declare-fun m!901671 () Bool)

(assert (=> mapNonEmpty!35458 m!901671))

(declare-fun m!901673 () Bool)

(assert (=> b!973956 m!901673))

(declare-fun m!901675 () Bool)

(assert (=> b!973961 m!901675))

(assert (=> b!973961 m!901675))

(declare-fun m!901677 () Bool)

(assert (=> b!973961 m!901677))

(declare-fun m!901679 () Bool)

(assert (=> b!973960 m!901679))

(declare-fun m!901681 () Bool)

(assert (=> b!973955 m!901681))

(assert (=> b!973955 m!901675))

(assert (=> b!973955 m!901681))

(assert (=> b!973955 m!901675))

(declare-fun m!901683 () Bool)

(assert (=> b!973955 m!901683))

(declare-fun m!901685 () Bool)

(assert (=> b!973963 m!901685))

(declare-fun m!901687 () Bool)

(assert (=> start!83436 m!901687))

(declare-fun m!901689 () Bool)

(assert (=> start!83436 m!901689))

(declare-fun m!901691 () Bool)

(assert (=> start!83436 m!901691))

(check-sat (not b!973960) (not b!973963) b_and!31021 (not b!973961) (not b_next!19401) (not b!973956) (not start!83436) (not b!973955) tp_is_empty!22299 (not mapNonEmpty!35458))
(check-sat b_and!31021 (not b_next!19401))
