; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40942 () Bool)

(assert start!40942)

(declare-fun b_free!10869 () Bool)

(declare-fun b_next!10869 () Bool)

(assert (=> start!40942 (= b_free!10869 (not b_next!10869))))

(declare-fun tp!38433 () Bool)

(declare-fun b_and!19029 () Bool)

(assert (=> start!40942 (= tp!38433 b_and!19029)))

(declare-fun mapIsEmpty!19951 () Bool)

(declare-fun mapRes!19951 () Bool)

(assert (=> mapIsEmpty!19951 mapRes!19951))

(declare-fun b!454982 () Bool)

(declare-fun res!271320 () Bool)

(declare-fun e!266071 () Bool)

(assert (=> b!454982 (=> (not res!271320) (not e!266071))))

(declare-datatypes ((array!28183 0))(
  ( (array!28184 (arr!13532 (Array (_ BitVec 32) (_ BitVec 64))) (size!13884 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28183)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28183 (_ BitVec 32)) Bool)

(assert (=> b!454982 (= res!271320 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!454983 () Bool)

(declare-fun res!271318 () Bool)

(assert (=> b!454983 (=> (not res!271318) (not e!266071))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!454983 (= res!271318 (validKeyInArray!0 k0!794))))

(declare-fun b!454984 () Bool)

(declare-fun e!266070 () Bool)

(declare-fun tp_is_empty!12207 () Bool)

(assert (=> b!454984 (= e!266070 tp_is_empty!12207)))

(declare-fun b!454985 () Bool)

(declare-fun res!271317 () Bool)

(assert (=> b!454985 (=> (not res!271317) (not e!266071))))

(declare-fun arrayContainsKey!0 (array!28183 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!454985 (= res!271317 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!454986 () Bool)

(declare-fun res!271311 () Bool)

(assert (=> b!454986 (=> (not res!271311) (not e!266071))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!454986 (= res!271311 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13884 _keys!709))))))

(declare-fun b!454987 () Bool)

(declare-fun e!266067 () Bool)

(assert (=> b!454987 (= e!266067 tp_is_empty!12207)))

(declare-fun b!454988 () Bool)

(declare-fun e!266069 () Bool)

(assert (=> b!454988 (= e!266071 e!266069)))

(declare-fun res!271312 () Bool)

(assert (=> b!454988 (=> (not res!271312) (not e!266069))))

(declare-fun lt!206247 () array!28183)

(assert (=> b!454988 (= res!271312 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206247 mask!1025))))

(assert (=> b!454988 (= lt!206247 (array!28184 (store (arr!13532 _keys!709) i!563 k0!794) (size!13884 _keys!709)))))

(declare-fun b!454989 () Bool)

(declare-fun res!271314 () Bool)

(assert (=> b!454989 (=> (not res!271314) (not e!266069))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!454989 (= res!271314 (bvsle from!863 i!563))))

(declare-fun b!454990 () Bool)

(declare-fun res!271315 () Bool)

(assert (=> b!454990 (=> (not res!271315) (not e!266071))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!17381 0))(
  ( (V!17382 (val!6148 Int)) )
))
(declare-datatypes ((ValueCell!5760 0))(
  ( (ValueCellFull!5760 (v!8410 V!17381)) (EmptyCell!5760) )
))
(declare-datatypes ((array!28185 0))(
  ( (array!28186 (arr!13533 (Array (_ BitVec 32) ValueCell!5760)) (size!13885 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28185)

(assert (=> b!454990 (= res!271315 (and (= (size!13885 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13884 _keys!709) (size!13885 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!454991 () Bool)

(declare-fun res!271313 () Bool)

(assert (=> b!454991 (=> (not res!271313) (not e!266069))))

(declare-datatypes ((List!8153 0))(
  ( (Nil!8150) (Cons!8149 (h!9005 (_ BitVec 64)) (t!13989 List!8153)) )
))
(declare-fun arrayNoDuplicates!0 (array!28183 (_ BitVec 32) List!8153) Bool)

(assert (=> b!454991 (= res!271313 (arrayNoDuplicates!0 lt!206247 #b00000000000000000000000000000000 Nil!8150))))

(declare-fun b!454992 () Bool)

(declare-fun res!271316 () Bool)

(assert (=> b!454992 (=> (not res!271316) (not e!266071))))

(assert (=> b!454992 (= res!271316 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8150))))

(declare-fun b!454993 () Bool)

(declare-fun res!271321 () Bool)

(assert (=> b!454993 (=> (not res!271321) (not e!266071))))

(assert (=> b!454993 (= res!271321 (or (= (select (arr!13532 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13532 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!454994 () Bool)

(assert (=> b!454994 (= e!266069 false)))

(declare-fun minValue!515 () V!17381)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!17381)

(declare-datatypes ((tuple2!8046 0))(
  ( (tuple2!8047 (_1!4033 (_ BitVec 64)) (_2!4033 V!17381)) )
))
(declare-datatypes ((List!8154 0))(
  ( (Nil!8151) (Cons!8150 (h!9006 tuple2!8046) (t!13990 List!8154)) )
))
(declare-datatypes ((ListLongMap!6973 0))(
  ( (ListLongMap!6974 (toList!3502 List!8154)) )
))
(declare-fun lt!206245 () ListLongMap!6973)

(declare-fun v!412 () V!17381)

(declare-fun getCurrentListMapNoExtraKeys!1678 (array!28183 array!28185 (_ BitVec 32) (_ BitVec 32) V!17381 V!17381 (_ BitVec 32) Int) ListLongMap!6973)

(assert (=> b!454994 (= lt!206245 (getCurrentListMapNoExtraKeys!1678 lt!206247 (array!28186 (store (arr!13533 _values!549) i!563 (ValueCellFull!5760 v!412)) (size!13885 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!206246 () ListLongMap!6973)

(assert (=> b!454994 (= lt!206246 (getCurrentListMapNoExtraKeys!1678 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!454995 () Bool)

(declare-fun e!266072 () Bool)

(assert (=> b!454995 (= e!266072 (and e!266067 mapRes!19951))))

(declare-fun condMapEmpty!19951 () Bool)

(declare-fun mapDefault!19951 () ValueCell!5760)

(assert (=> b!454995 (= condMapEmpty!19951 (= (arr!13533 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5760)) mapDefault!19951)))))

(declare-fun mapNonEmpty!19951 () Bool)

(declare-fun tp!38434 () Bool)

(assert (=> mapNonEmpty!19951 (= mapRes!19951 (and tp!38434 e!266070))))

(declare-fun mapKey!19951 () (_ BitVec 32))

(declare-fun mapRest!19951 () (Array (_ BitVec 32) ValueCell!5760))

(declare-fun mapValue!19951 () ValueCell!5760)

(assert (=> mapNonEmpty!19951 (= (arr!13533 _values!549) (store mapRest!19951 mapKey!19951 mapValue!19951))))

(declare-fun res!271319 () Bool)

(assert (=> start!40942 (=> (not res!271319) (not e!266071))))

(assert (=> start!40942 (= res!271319 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13884 _keys!709))))))

(assert (=> start!40942 e!266071))

(assert (=> start!40942 tp_is_empty!12207))

(assert (=> start!40942 tp!38433))

(assert (=> start!40942 true))

(declare-fun array_inv!9792 (array!28185) Bool)

(assert (=> start!40942 (and (array_inv!9792 _values!549) e!266072)))

(declare-fun array_inv!9793 (array!28183) Bool)

(assert (=> start!40942 (array_inv!9793 _keys!709)))

(declare-fun b!454996 () Bool)

(declare-fun res!271322 () Bool)

(assert (=> b!454996 (=> (not res!271322) (not e!266071))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!454996 (= res!271322 (validMask!0 mask!1025))))

(assert (= (and start!40942 res!271319) b!454996))

(assert (= (and b!454996 res!271322) b!454990))

(assert (= (and b!454990 res!271315) b!454982))

(assert (= (and b!454982 res!271320) b!454992))

(assert (= (and b!454992 res!271316) b!454986))

(assert (= (and b!454986 res!271311) b!454983))

(assert (= (and b!454983 res!271318) b!454993))

(assert (= (and b!454993 res!271321) b!454985))

(assert (= (and b!454985 res!271317) b!454988))

(assert (= (and b!454988 res!271312) b!454991))

(assert (= (and b!454991 res!271313) b!454989))

(assert (= (and b!454989 res!271314) b!454994))

(assert (= (and b!454995 condMapEmpty!19951) mapIsEmpty!19951))

(assert (= (and b!454995 (not condMapEmpty!19951)) mapNonEmpty!19951))

(get-info :version)

(assert (= (and mapNonEmpty!19951 ((_ is ValueCellFull!5760) mapValue!19951)) b!454984))

(assert (= (and b!454995 ((_ is ValueCellFull!5760) mapDefault!19951)) b!454987))

(assert (= start!40942 b!454995))

(declare-fun m!438891 () Bool)

(assert (=> b!454992 m!438891))

(declare-fun m!438893 () Bool)

(assert (=> b!454988 m!438893))

(declare-fun m!438895 () Bool)

(assert (=> b!454988 m!438895))

(declare-fun m!438897 () Bool)

(assert (=> mapNonEmpty!19951 m!438897))

(declare-fun m!438899 () Bool)

(assert (=> b!454985 m!438899))

(declare-fun m!438901 () Bool)

(assert (=> b!454991 m!438901))

(declare-fun m!438903 () Bool)

(assert (=> b!454996 m!438903))

(declare-fun m!438905 () Bool)

(assert (=> b!454982 m!438905))

(declare-fun m!438907 () Bool)

(assert (=> b!454994 m!438907))

(declare-fun m!438909 () Bool)

(assert (=> b!454994 m!438909))

(declare-fun m!438911 () Bool)

(assert (=> b!454994 m!438911))

(declare-fun m!438913 () Bool)

(assert (=> start!40942 m!438913))

(declare-fun m!438915 () Bool)

(assert (=> start!40942 m!438915))

(declare-fun m!438917 () Bool)

(assert (=> b!454983 m!438917))

(declare-fun m!438919 () Bool)

(assert (=> b!454993 m!438919))

(check-sat (not b_next!10869) (not b!454982) b_and!19029 (not b!454996) (not b!454988) (not b!454994) (not b!454992) (not mapNonEmpty!19951) (not b!454991) (not b!454983) (not b!454985) (not start!40942) tp_is_empty!12207)
(check-sat b_and!19029 (not b_next!10869))
