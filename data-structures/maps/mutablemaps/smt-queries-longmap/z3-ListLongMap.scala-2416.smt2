; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38234 () Bool)

(assert start!38234)

(declare-fun b_free!9063 () Bool)

(declare-fun b_next!9063 () Bool)

(assert (=> start!38234 (= b_free!9063 (not b_next!9063))))

(declare-fun tp!31976 () Bool)

(declare-fun b_and!16467 () Bool)

(assert (=> start!38234 (= tp!31976 b_and!16467)))

(declare-fun b!394084 () Bool)

(declare-fun e!238575 () Bool)

(declare-fun e!238572 () Bool)

(declare-fun mapRes!16203 () Bool)

(assert (=> b!394084 (= e!238575 (and e!238572 mapRes!16203))))

(declare-fun condMapEmpty!16203 () Bool)

(declare-datatypes ((V!14085 0))(
  ( (V!14086 (val!4912 Int)) )
))
(declare-datatypes ((ValueCell!4524 0))(
  ( (ValueCellFull!4524 (v!7153 V!14085)) (EmptyCell!4524) )
))
(declare-datatypes ((array!23355 0))(
  ( (array!23356 (arr!11131 (Array (_ BitVec 32) ValueCell!4524)) (size!11483 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23355)

(declare-fun mapDefault!16203 () ValueCell!4524)

(assert (=> b!394084 (= condMapEmpty!16203 (= (arr!11131 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4524)) mapDefault!16203)))))

(declare-fun b!394085 () Bool)

(declare-fun res!225905 () Bool)

(declare-fun e!238576 () Bool)

(assert (=> b!394085 (=> (not res!225905) (not e!238576))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((array!23357 0))(
  ( (array!23358 (arr!11132 (Array (_ BitVec 32) (_ BitVec 64))) (size!11484 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23357)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!394085 (= res!225905 (and (= (size!11483 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11484 _keys!658) (size!11483 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!394086 () Bool)

(declare-fun e!238578 () Bool)

(assert (=> b!394086 (= e!238576 e!238578)))

(declare-fun res!225910 () Bool)

(assert (=> b!394086 (=> (not res!225910) (not e!238578))))

(declare-fun lt!186761 () array!23357)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23357 (_ BitVec 32)) Bool)

(assert (=> b!394086 (= res!225910 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!186761 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!394086 (= lt!186761 (array!23358 (store (arr!11132 _keys!658) i!548 k0!778) (size!11484 _keys!658)))))

(declare-fun b!394087 () Bool)

(declare-fun res!225913 () Bool)

(assert (=> b!394087 (=> (not res!225913) (not e!238576))))

(assert (=> b!394087 (= res!225913 (or (= (select (arr!11132 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11132 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!394088 () Bool)

(declare-fun tp_is_empty!9735 () Bool)

(assert (=> b!394088 (= e!238572 tp_is_empty!9735)))

(declare-fun mapIsEmpty!16203 () Bool)

(assert (=> mapIsEmpty!16203 mapRes!16203))

(declare-fun mapNonEmpty!16203 () Bool)

(declare-fun tp!31977 () Bool)

(declare-fun e!238573 () Bool)

(assert (=> mapNonEmpty!16203 (= mapRes!16203 (and tp!31977 e!238573))))

(declare-fun mapKey!16203 () (_ BitVec 32))

(declare-fun mapValue!16203 () ValueCell!4524)

(declare-fun mapRest!16203 () (Array (_ BitVec 32) ValueCell!4524))

(assert (=> mapNonEmpty!16203 (= (arr!11131 _values!506) (store mapRest!16203 mapKey!16203 mapValue!16203))))

(declare-fun b!394089 () Bool)

(declare-fun res!225907 () Bool)

(assert (=> b!394089 (=> (not res!225907) (not e!238576))))

(declare-fun arrayContainsKey!0 (array!23357 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!394089 (= res!225907 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!394090 () Bool)

(declare-fun res!225909 () Bool)

(assert (=> b!394090 (=> (not res!225909) (not e!238576))))

(declare-datatypes ((List!6446 0))(
  ( (Nil!6443) (Cons!6442 (h!7298 (_ BitVec 64)) (t!11628 List!6446)) )
))
(declare-fun arrayNoDuplicates!0 (array!23357 (_ BitVec 32) List!6446) Bool)

(assert (=> b!394090 (= res!225909 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6443))))

(declare-fun b!394091 () Bool)

(declare-fun res!225914 () Bool)

(assert (=> b!394091 (=> (not res!225914) (not e!238576))))

(assert (=> b!394091 (= res!225914 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!394092 () Bool)

(assert (=> b!394092 (= e!238573 tp_is_empty!9735)))

(declare-fun b!394093 () Bool)

(declare-fun res!225906 () Bool)

(assert (=> b!394093 (=> (not res!225906) (not e!238576))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!394093 (= res!225906 (validKeyInArray!0 k0!778))))

(declare-fun res!225912 () Bool)

(assert (=> start!38234 (=> (not res!225912) (not e!238576))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!38234 (= res!225912 (validMask!0 mask!970))))

(assert (=> start!38234 e!238576))

(declare-fun array_inv!8152 (array!23355) Bool)

(assert (=> start!38234 (and (array_inv!8152 _values!506) e!238575)))

(assert (=> start!38234 tp!31976))

(assert (=> start!38234 true))

(assert (=> start!38234 tp_is_empty!9735))

(declare-fun array_inv!8153 (array!23357) Bool)

(assert (=> start!38234 (array_inv!8153 _keys!658)))

(declare-fun b!394094 () Bool)

(declare-fun res!225904 () Bool)

(assert (=> b!394094 (=> (not res!225904) (not e!238576))))

(assert (=> b!394094 (= res!225904 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11484 _keys!658))))))

(declare-fun b!394095 () Bool)

(declare-fun e!238577 () Bool)

(assert (=> b!394095 (= e!238578 (not e!238577))))

(declare-fun res!225911 () Bool)

(assert (=> b!394095 (=> res!225911 e!238577)))

(declare-fun lt!186766 () Bool)

(assert (=> b!394095 (= res!225911 (or (and (not lt!186766) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!186766) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!186766)))))

(assert (=> b!394095 (= lt!186766 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6562 0))(
  ( (tuple2!6563 (_1!3291 (_ BitVec 64)) (_2!3291 V!14085)) )
))
(declare-datatypes ((List!6447 0))(
  ( (Nil!6444) (Cons!6443 (h!7299 tuple2!6562) (t!11629 List!6447)) )
))
(declare-datatypes ((ListLongMap!5489 0))(
  ( (ListLongMap!5490 (toList!2760 List!6447)) )
))
(declare-fun lt!186764 () ListLongMap!5489)

(declare-fun zeroValue!472 () V!14085)

(declare-fun minValue!472 () V!14085)

(declare-fun getCurrentListMap!2119 (array!23357 array!23355 (_ BitVec 32) (_ BitVec 32) V!14085 V!14085 (_ BitVec 32) Int) ListLongMap!5489)

(assert (=> b!394095 (= lt!186764 (getCurrentListMap!2119 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!186758 () array!23355)

(declare-fun lt!186763 () ListLongMap!5489)

(assert (=> b!394095 (= lt!186763 (getCurrentListMap!2119 lt!186761 lt!186758 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!186756 () ListLongMap!5489)

(declare-fun lt!186762 () ListLongMap!5489)

(assert (=> b!394095 (and (= lt!186756 lt!186762) (= lt!186762 lt!186756))))

(declare-fun lt!186759 () ListLongMap!5489)

(declare-fun lt!186765 () tuple2!6562)

(declare-fun +!1058 (ListLongMap!5489 tuple2!6562) ListLongMap!5489)

(assert (=> b!394095 (= lt!186762 (+!1058 lt!186759 lt!186765))))

(declare-fun v!373 () V!14085)

(assert (=> b!394095 (= lt!186765 (tuple2!6563 k0!778 v!373))))

(declare-datatypes ((Unit!12013 0))(
  ( (Unit!12014) )
))
(declare-fun lt!186760 () Unit!12013)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!276 (array!23357 array!23355 (_ BitVec 32) (_ BitVec 32) V!14085 V!14085 (_ BitVec 32) (_ BitVec 64) V!14085 (_ BitVec 32) Int) Unit!12013)

(assert (=> b!394095 (= lt!186760 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!276 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!981 (array!23357 array!23355 (_ BitVec 32) (_ BitVec 32) V!14085 V!14085 (_ BitVec 32) Int) ListLongMap!5489)

(assert (=> b!394095 (= lt!186756 (getCurrentListMapNoExtraKeys!981 lt!186761 lt!186758 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!394095 (= lt!186758 (array!23356 (store (arr!11131 _values!506) i!548 (ValueCellFull!4524 v!373)) (size!11483 _values!506)))))

(assert (=> b!394095 (= lt!186759 (getCurrentListMapNoExtraKeys!981 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!394096 () Bool)

(assert (=> b!394096 (= e!238577 true)))

(declare-fun lt!186757 () ListLongMap!5489)

(assert (=> b!394096 (= lt!186757 (+!1058 lt!186764 lt!186765))))

(assert (=> b!394096 (= lt!186763 lt!186756)))

(declare-fun b!394097 () Bool)

(declare-fun res!225908 () Bool)

(assert (=> b!394097 (=> (not res!225908) (not e!238578))))

(assert (=> b!394097 (= res!225908 (arrayNoDuplicates!0 lt!186761 #b00000000000000000000000000000000 Nil!6443))))

(assert (= (and start!38234 res!225912) b!394085))

(assert (= (and b!394085 res!225905) b!394091))

(assert (= (and b!394091 res!225914) b!394090))

(assert (= (and b!394090 res!225909) b!394094))

(assert (= (and b!394094 res!225904) b!394093))

(assert (= (and b!394093 res!225906) b!394087))

(assert (= (and b!394087 res!225913) b!394089))

(assert (= (and b!394089 res!225907) b!394086))

(assert (= (and b!394086 res!225910) b!394097))

(assert (= (and b!394097 res!225908) b!394095))

(assert (= (and b!394095 (not res!225911)) b!394096))

(assert (= (and b!394084 condMapEmpty!16203) mapIsEmpty!16203))

(assert (= (and b!394084 (not condMapEmpty!16203)) mapNonEmpty!16203))

(get-info :version)

(assert (= (and mapNonEmpty!16203 ((_ is ValueCellFull!4524) mapValue!16203)) b!394092))

(assert (= (and b!394084 ((_ is ValueCellFull!4524) mapDefault!16203)) b!394088))

(assert (= start!38234 b!394084))

(declare-fun m!390565 () Bool)

(assert (=> b!394095 m!390565))

(declare-fun m!390567 () Bool)

(assert (=> b!394095 m!390567))

(declare-fun m!390569 () Bool)

(assert (=> b!394095 m!390569))

(declare-fun m!390571 () Bool)

(assert (=> b!394095 m!390571))

(declare-fun m!390573 () Bool)

(assert (=> b!394095 m!390573))

(declare-fun m!390575 () Bool)

(assert (=> b!394095 m!390575))

(declare-fun m!390577 () Bool)

(assert (=> b!394095 m!390577))

(declare-fun m!390579 () Bool)

(assert (=> b!394087 m!390579))

(declare-fun m!390581 () Bool)

(assert (=> b!394086 m!390581))

(declare-fun m!390583 () Bool)

(assert (=> b!394086 m!390583))

(declare-fun m!390585 () Bool)

(assert (=> mapNonEmpty!16203 m!390585))

(declare-fun m!390587 () Bool)

(assert (=> b!394093 m!390587))

(declare-fun m!390589 () Bool)

(assert (=> start!38234 m!390589))

(declare-fun m!390591 () Bool)

(assert (=> start!38234 m!390591))

(declare-fun m!390593 () Bool)

(assert (=> start!38234 m!390593))

(declare-fun m!390595 () Bool)

(assert (=> b!394097 m!390595))

(declare-fun m!390597 () Bool)

(assert (=> b!394090 m!390597))

(declare-fun m!390599 () Bool)

(assert (=> b!394091 m!390599))

(declare-fun m!390601 () Bool)

(assert (=> b!394089 m!390601))

(declare-fun m!390603 () Bool)

(assert (=> b!394096 m!390603))

(check-sat (not b!394086) (not b!394095) (not b!394093) (not mapNonEmpty!16203) (not b!394096) (not b_next!9063) (not b!394097) b_and!16467 (not start!38234) (not b!394091) tp_is_empty!9735 (not b!394090) (not b!394089))
(check-sat b_and!16467 (not b_next!9063))
