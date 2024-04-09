; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41078 () Bool)

(assert start!41078)

(declare-fun b_free!10983 () Bool)

(declare-fun b_next!10983 () Bool)

(assert (=> start!41078 (= b_free!10983 (not b_next!10983))))

(declare-fun tp!38778 () Bool)

(declare-fun b_and!19191 () Bool)

(assert (=> start!41078 (= tp!38778 b_and!19191)))

(declare-fun b!457896 () Bool)

(declare-fun res!273606 () Bool)

(declare-fun e!267360 () Bool)

(assert (=> b!457896 (=> (not res!273606) (not e!267360))))

(declare-datatypes ((array!28409 0))(
  ( (array!28410 (arr!13644 (Array (_ BitVec 32) (_ BitVec 64))) (size!13996 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28409)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!28409 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!457896 (= res!273606 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!457897 () Bool)

(declare-fun e!267364 () Bool)

(declare-fun e!267361 () Bool)

(declare-fun mapRes!20125 () Bool)

(assert (=> b!457897 (= e!267364 (and e!267361 mapRes!20125))))

(declare-fun condMapEmpty!20125 () Bool)

(declare-datatypes ((V!17533 0))(
  ( (V!17534 (val!6205 Int)) )
))
(declare-datatypes ((ValueCell!5817 0))(
  ( (ValueCellFull!5817 (v!8471 V!17533)) (EmptyCell!5817) )
))
(declare-datatypes ((array!28411 0))(
  ( (array!28412 (arr!13645 (Array (_ BitVec 32) ValueCell!5817)) (size!13997 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28411)

(declare-fun mapDefault!20125 () ValueCell!5817)

(assert (=> b!457897 (= condMapEmpty!20125 (= (arr!13645 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5817)) mapDefault!20125)))))

(declare-fun b!457898 () Bool)

(declare-fun e!267363 () Bool)

(declare-fun tp_is_empty!12321 () Bool)

(assert (=> b!457898 (= e!267363 tp_is_empty!12321)))

(declare-fun b!457899 () Bool)

(declare-fun e!267366 () Bool)

(assert (=> b!457899 (= e!267366 true)))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!8142 0))(
  ( (tuple2!8143 (_1!4081 (_ BitVec 64)) (_2!4081 V!17533)) )
))
(declare-datatypes ((List!8245 0))(
  ( (Nil!8242) (Cons!8241 (h!9097 tuple2!8142) (t!14115 List!8245)) )
))
(declare-datatypes ((ListLongMap!7069 0))(
  ( (ListLongMap!7070 (toList!3550 List!8245)) )
))
(declare-fun lt!207172 () ListLongMap!7069)

(declare-fun lt!207178 () ListLongMap!7069)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun +!1570 (ListLongMap!7069 tuple2!8142) ListLongMap!7069)

(declare-fun get!6731 (ValueCell!5817 V!17533) V!17533)

(declare-fun dynLambda!881 (Int (_ BitVec 64)) V!17533)

(assert (=> b!457899 (= lt!207172 (+!1570 lt!207178 (tuple2!8143 (select (arr!13644 _keys!709) from!863) (get!6731 (select (arr!13645 _values!549) from!863) (dynLambda!881 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!457900 () Bool)

(declare-fun res!273608 () Bool)

(declare-fun e!267362 () Bool)

(assert (=> b!457900 (=> (not res!273608) (not e!267362))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!457900 (= res!273608 (bvsle from!863 i!563))))

(declare-fun b!457901 () Bool)

(declare-fun e!267365 () Bool)

(assert (=> b!457901 (= e!267362 e!267365)))

(declare-fun res!273601 () Bool)

(assert (=> b!457901 (=> (not res!273601) (not e!267365))))

(assert (=> b!457901 (= res!273601 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!17533)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!207171 () array!28411)

(declare-fun lt!207173 () array!28409)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17533)

(declare-fun getCurrentListMapNoExtraKeys!1722 (array!28409 array!28411 (_ BitVec 32) (_ BitVec 32) V!17533 V!17533 (_ BitVec 32) Int) ListLongMap!7069)

(assert (=> b!457901 (= lt!207172 (getCurrentListMapNoExtraKeys!1722 lt!207173 lt!207171 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!17533)

(assert (=> b!457901 (= lt!207171 (array!28412 (store (arr!13645 _values!549) i!563 (ValueCellFull!5817 v!412)) (size!13997 _values!549)))))

(declare-fun lt!207177 () ListLongMap!7069)

(assert (=> b!457901 (= lt!207177 (getCurrentListMapNoExtraKeys!1722 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!457902 () Bool)

(declare-fun res!273609 () Bool)

(assert (=> b!457902 (=> (not res!273609) (not e!267360))))

(assert (=> b!457902 (= res!273609 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13996 _keys!709))))))

(declare-fun mapNonEmpty!20125 () Bool)

(declare-fun tp!38779 () Bool)

(assert (=> mapNonEmpty!20125 (= mapRes!20125 (and tp!38779 e!267363))))

(declare-fun mapKey!20125 () (_ BitVec 32))

(declare-fun mapRest!20125 () (Array (_ BitVec 32) ValueCell!5817))

(declare-fun mapValue!20125 () ValueCell!5817)

(assert (=> mapNonEmpty!20125 (= (arr!13645 _values!549) (store mapRest!20125 mapKey!20125 mapValue!20125))))

(declare-fun b!457903 () Bool)

(declare-fun res!273605 () Bool)

(assert (=> b!457903 (=> (not res!273605) (not e!267360))))

(assert (=> b!457903 (= res!273605 (or (= (select (arr!13644 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13644 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!457904 () Bool)

(declare-fun res!273603 () Bool)

(assert (=> b!457904 (=> (not res!273603) (not e!267360))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!457904 (= res!273603 (validKeyInArray!0 k0!794))))

(declare-fun b!457905 () Bool)

(assert (=> b!457905 (= e!267361 tp_is_empty!12321)))

(declare-fun b!457906 () Bool)

(assert (=> b!457906 (= e!267365 (not e!267366))))

(declare-fun res!273599 () Bool)

(assert (=> b!457906 (=> res!273599 e!267366)))

(assert (=> b!457906 (= res!273599 (not (validKeyInArray!0 (select (arr!13644 _keys!709) from!863))))))

(declare-fun lt!207174 () ListLongMap!7069)

(assert (=> b!457906 (= lt!207174 lt!207178)))

(declare-fun lt!207175 () ListLongMap!7069)

(assert (=> b!457906 (= lt!207178 (+!1570 lt!207175 (tuple2!8143 k0!794 v!412)))))

(assert (=> b!457906 (= lt!207174 (getCurrentListMapNoExtraKeys!1722 lt!207173 lt!207171 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!457906 (= lt!207175 (getCurrentListMapNoExtraKeys!1722 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!13255 0))(
  ( (Unit!13256) )
))
(declare-fun lt!207176 () Unit!13255)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!730 (array!28409 array!28411 (_ BitVec 32) (_ BitVec 32) V!17533 V!17533 (_ BitVec 32) (_ BitVec 64) V!17533 (_ BitVec 32) Int) Unit!13255)

(assert (=> b!457906 (= lt!207176 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!730 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!457908 () Bool)

(declare-fun res!273604 () Bool)

(assert (=> b!457908 (=> (not res!273604) (not e!267360))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!457908 (= res!273604 (validMask!0 mask!1025))))

(declare-fun b!457909 () Bool)

(declare-fun res!273597 () Bool)

(assert (=> b!457909 (=> (not res!273597) (not e!267362))))

(declare-datatypes ((List!8246 0))(
  ( (Nil!8243) (Cons!8242 (h!9098 (_ BitVec 64)) (t!14116 List!8246)) )
))
(declare-fun arrayNoDuplicates!0 (array!28409 (_ BitVec 32) List!8246) Bool)

(assert (=> b!457909 (= res!273597 (arrayNoDuplicates!0 lt!207173 #b00000000000000000000000000000000 Nil!8243))))

(declare-fun b!457910 () Bool)

(declare-fun res!273596 () Bool)

(assert (=> b!457910 (=> (not res!273596) (not e!267360))))

(assert (=> b!457910 (= res!273596 (and (= (size!13997 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13996 _keys!709) (size!13997 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!457911 () Bool)

(assert (=> b!457911 (= e!267360 e!267362)))

(declare-fun res!273600 () Bool)

(assert (=> b!457911 (=> (not res!273600) (not e!267362))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28409 (_ BitVec 32)) Bool)

(assert (=> b!457911 (= res!273600 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!207173 mask!1025))))

(assert (=> b!457911 (= lt!207173 (array!28410 (store (arr!13644 _keys!709) i!563 k0!794) (size!13996 _keys!709)))))

(declare-fun b!457912 () Bool)

(declare-fun res!273598 () Bool)

(assert (=> b!457912 (=> (not res!273598) (not e!267360))))

(assert (=> b!457912 (= res!273598 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8243))))

(declare-fun mapIsEmpty!20125 () Bool)

(assert (=> mapIsEmpty!20125 mapRes!20125))

(declare-fun b!457907 () Bool)

(declare-fun res!273602 () Bool)

(assert (=> b!457907 (=> (not res!273602) (not e!267360))))

(assert (=> b!457907 (= res!273602 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!273607 () Bool)

(assert (=> start!41078 (=> (not res!273607) (not e!267360))))

(assert (=> start!41078 (= res!273607 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13996 _keys!709))))))

(assert (=> start!41078 e!267360))

(assert (=> start!41078 tp_is_empty!12321))

(assert (=> start!41078 tp!38778))

(assert (=> start!41078 true))

(declare-fun array_inv!9868 (array!28411) Bool)

(assert (=> start!41078 (and (array_inv!9868 _values!549) e!267364)))

(declare-fun array_inv!9869 (array!28409) Bool)

(assert (=> start!41078 (array_inv!9869 _keys!709)))

(assert (= (and start!41078 res!273607) b!457908))

(assert (= (and b!457908 res!273604) b!457910))

(assert (= (and b!457910 res!273596) b!457907))

(assert (= (and b!457907 res!273602) b!457912))

(assert (= (and b!457912 res!273598) b!457902))

(assert (= (and b!457902 res!273609) b!457904))

(assert (= (and b!457904 res!273603) b!457903))

(assert (= (and b!457903 res!273605) b!457896))

(assert (= (and b!457896 res!273606) b!457911))

(assert (= (and b!457911 res!273600) b!457909))

(assert (= (and b!457909 res!273597) b!457900))

(assert (= (and b!457900 res!273608) b!457901))

(assert (= (and b!457901 res!273601) b!457906))

(assert (= (and b!457906 (not res!273599)) b!457899))

(assert (= (and b!457897 condMapEmpty!20125) mapIsEmpty!20125))

(assert (= (and b!457897 (not condMapEmpty!20125)) mapNonEmpty!20125))

(get-info :version)

(assert (= (and mapNonEmpty!20125 ((_ is ValueCellFull!5817) mapValue!20125)) b!457898))

(assert (= (and b!457897 ((_ is ValueCellFull!5817) mapDefault!20125)) b!457905))

(assert (= start!41078 b!457897))

(declare-fun b_lambda!9779 () Bool)

(assert (=> (not b_lambda!9779) (not b!457899)))

(declare-fun t!14114 () Bool)

(declare-fun tb!3827 () Bool)

(assert (=> (and start!41078 (= defaultEntry!557 defaultEntry!557) t!14114) tb!3827))

(declare-fun result!7187 () Bool)

(assert (=> tb!3827 (= result!7187 tp_is_empty!12321)))

(assert (=> b!457899 t!14114))

(declare-fun b_and!19193 () Bool)

(assert (= b_and!19191 (and (=> t!14114 result!7187) b_and!19193)))

(declare-fun m!441251 () Bool)

(assert (=> b!457907 m!441251))

(declare-fun m!441253 () Bool)

(assert (=> start!41078 m!441253))

(declare-fun m!441255 () Bool)

(assert (=> start!41078 m!441255))

(declare-fun m!441257 () Bool)

(assert (=> b!457911 m!441257))

(declare-fun m!441259 () Bool)

(assert (=> b!457911 m!441259))

(declare-fun m!441261 () Bool)

(assert (=> b!457912 m!441261))

(declare-fun m!441263 () Bool)

(assert (=> b!457908 m!441263))

(declare-fun m!441265 () Bool)

(assert (=> b!457906 m!441265))

(declare-fun m!441267 () Bool)

(assert (=> b!457906 m!441267))

(declare-fun m!441269 () Bool)

(assert (=> b!457906 m!441269))

(declare-fun m!441271 () Bool)

(assert (=> b!457906 m!441271))

(assert (=> b!457906 m!441265))

(declare-fun m!441273 () Bool)

(assert (=> b!457906 m!441273))

(declare-fun m!441275 () Bool)

(assert (=> b!457906 m!441275))

(declare-fun m!441277 () Bool)

(assert (=> mapNonEmpty!20125 m!441277))

(declare-fun m!441279 () Bool)

(assert (=> b!457909 m!441279))

(declare-fun m!441281 () Bool)

(assert (=> b!457901 m!441281))

(declare-fun m!441283 () Bool)

(assert (=> b!457901 m!441283))

(declare-fun m!441285 () Bool)

(assert (=> b!457901 m!441285))

(declare-fun m!441287 () Bool)

(assert (=> b!457904 m!441287))

(declare-fun m!441289 () Bool)

(assert (=> b!457903 m!441289))

(declare-fun m!441291 () Bool)

(assert (=> b!457896 m!441291))

(assert (=> b!457899 m!441265))

(declare-fun m!441293 () Bool)

(assert (=> b!457899 m!441293))

(declare-fun m!441295 () Bool)

(assert (=> b!457899 m!441295))

(declare-fun m!441297 () Bool)

(assert (=> b!457899 m!441297))

(assert (=> b!457899 m!441295))

(assert (=> b!457899 m!441293))

(declare-fun m!441299 () Bool)

(assert (=> b!457899 m!441299))

(check-sat (not b!457911) (not mapNonEmpty!20125) (not b!457912) (not b!457907) (not b!457896) (not b!457901) (not b_lambda!9779) (not b!457909) (not b!457908) (not b!457906) (not b!457899) b_and!19193 (not b!457904) tp_is_empty!12321 (not b_next!10983) (not start!41078))
(check-sat b_and!19193 (not b_next!10983))
