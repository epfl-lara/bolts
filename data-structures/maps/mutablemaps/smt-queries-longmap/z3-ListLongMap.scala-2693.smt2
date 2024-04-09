; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39986 () Bool)

(assert start!39986)

(declare-fun b_free!10245 () Bool)

(declare-fun b_next!10245 () Bool)

(assert (=> start!39986 (= b_free!10245 (not b_next!10245))))

(declare-fun tp!36263 () Bool)

(declare-fun b_and!18167 () Bool)

(assert (=> start!39986 (= tp!36263 b_and!18167)))

(declare-fun b!434601 () Bool)

(declare-fun res!256049 () Bool)

(declare-fun e!256830 () Bool)

(assert (=> b!434601 (=> (not res!256049) (not e!256830))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!434601 (= res!256049 (bvsle from!863 i!563))))

(declare-fun b!434602 () Bool)

(declare-fun e!256826 () Bool)

(declare-fun e!256831 () Bool)

(assert (=> b!434602 (= e!256826 e!256831)))

(declare-fun res!256036 () Bool)

(assert (=> b!434602 (=> res!256036 e!256831)))

(declare-fun k0!794 () (_ BitVec 64))

(declare-datatypes ((array!26601 0))(
  ( (array!26602 (arr!12747 (Array (_ BitVec 32) (_ BitVec 64))) (size!13099 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26601)

(assert (=> b!434602 (= res!256036 (= k0!794 (select (arr!12747 _keys!709) from!863)))))

(assert (=> b!434602 (not (= (select (arr!12747 _keys!709) from!863) k0!794))))

(declare-datatypes ((Unit!12852 0))(
  ( (Unit!12853) )
))
(declare-fun lt!199980 () Unit!12852)

(declare-fun e!256834 () Unit!12852)

(assert (=> b!434602 (= lt!199980 e!256834)))

(declare-fun c!55628 () Bool)

(assert (=> b!434602 (= c!55628 (= (select (arr!12747 _keys!709) from!863) k0!794))))

(declare-datatypes ((V!16301 0))(
  ( (V!16302 (val!5743 Int)) )
))
(declare-datatypes ((tuple2!7532 0))(
  ( (tuple2!7533 (_1!3776 (_ BitVec 64)) (_2!3776 V!16301)) )
))
(declare-datatypes ((List!7579 0))(
  ( (Nil!7576) (Cons!7575 (h!8431 tuple2!7532) (t!13281 List!7579)) )
))
(declare-datatypes ((ListLongMap!6459 0))(
  ( (ListLongMap!6460 (toList!3245 List!7579)) )
))
(declare-fun lt!199978 () ListLongMap!6459)

(declare-fun lt!199983 () ListLongMap!6459)

(assert (=> b!434602 (= lt!199978 lt!199983)))

(declare-fun lt!199989 () ListLongMap!6459)

(declare-fun lt!199987 () tuple2!7532)

(declare-fun +!1390 (ListLongMap!6459 tuple2!7532) ListLongMap!6459)

(assert (=> b!434602 (= lt!199983 (+!1390 lt!199989 lt!199987))))

(declare-fun lt!199984 () V!16301)

(assert (=> b!434602 (= lt!199987 (tuple2!7533 (select (arr!12747 _keys!709) from!863) lt!199984))))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!5355 0))(
  ( (ValueCellFull!5355 (v!7986 V!16301)) (EmptyCell!5355) )
))
(declare-datatypes ((array!26603 0))(
  ( (array!26604 (arr!12748 (Array (_ BitVec 32) ValueCell!5355)) (size!13100 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26603)

(declare-fun get!6356 (ValueCell!5355 V!16301) V!16301)

(declare-fun dynLambda!821 (Int (_ BitVec 64)) V!16301)

(assert (=> b!434602 (= lt!199984 (get!6356 (select (arr!12748 _values!549) from!863) (dynLambda!821 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!256048 () Bool)

(declare-fun e!256828 () Bool)

(assert (=> start!39986 (=> (not res!256048) (not e!256828))))

(assert (=> start!39986 (= res!256048 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13099 _keys!709))))))

(assert (=> start!39986 e!256828))

(declare-fun tp_is_empty!11397 () Bool)

(assert (=> start!39986 tp_is_empty!11397))

(assert (=> start!39986 tp!36263))

(assert (=> start!39986 true))

(declare-fun e!256832 () Bool)

(declare-fun array_inv!9266 (array!26603) Bool)

(assert (=> start!39986 (and (array_inv!9266 _values!549) e!256832)))

(declare-fun array_inv!9267 (array!26601) Bool)

(assert (=> start!39986 (array_inv!9267 _keys!709)))

(declare-fun b!434603 () Bool)

(declare-fun res!256037 () Bool)

(assert (=> b!434603 (=> (not res!256037) (not e!256828))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26601 (_ BitVec 32)) Bool)

(assert (=> b!434603 (= res!256037 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!434604 () Bool)

(declare-fun res!256042 () Bool)

(assert (=> b!434604 (=> (not res!256042) (not e!256828))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!434604 (= res!256042 (and (= (size!13100 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13099 _keys!709) (size!13100 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!434605 () Bool)

(declare-fun e!256833 () Bool)

(assert (=> b!434605 (= e!256833 (not e!256826))))

(declare-fun res!256039 () Bool)

(assert (=> b!434605 (=> res!256039 e!256826)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!434605 (= res!256039 (not (validKeyInArray!0 (select (arr!12747 _keys!709) from!863))))))

(declare-fun lt!199986 () ListLongMap!6459)

(assert (=> b!434605 (= lt!199986 lt!199989)))

(declare-fun lt!199992 () ListLongMap!6459)

(declare-fun lt!199991 () tuple2!7532)

(assert (=> b!434605 (= lt!199989 (+!1390 lt!199992 lt!199991))))

(declare-fun minValue!515 () V!16301)

(declare-fun lt!199979 () array!26603)

(declare-fun zeroValue!515 () V!16301)

(declare-fun lt!199988 () array!26601)

(declare-fun getCurrentListMapNoExtraKeys!1430 (array!26601 array!26603 (_ BitVec 32) (_ BitVec 32) V!16301 V!16301 (_ BitVec 32) Int) ListLongMap!6459)

(assert (=> b!434605 (= lt!199986 (getCurrentListMapNoExtraKeys!1430 lt!199988 lt!199979 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun v!412 () V!16301)

(assert (=> b!434605 (= lt!199991 (tuple2!7533 k0!794 v!412))))

(assert (=> b!434605 (= lt!199992 (getCurrentListMapNoExtraKeys!1430 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!199981 () Unit!12852)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!572 (array!26601 array!26603 (_ BitVec 32) (_ BitVec 32) V!16301 V!16301 (_ BitVec 32) (_ BitVec 64) V!16301 (_ BitVec 32) Int) Unit!12852)

(assert (=> b!434605 (= lt!199981 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!572 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!434606 () Bool)

(declare-fun res!256040 () Bool)

(assert (=> b!434606 (=> (not res!256040) (not e!256828))))

(assert (=> b!434606 (= res!256040 (or (= (select (arr!12747 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12747 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!18717 () Bool)

(declare-fun mapRes!18717 () Bool)

(assert (=> mapIsEmpty!18717 mapRes!18717))

(declare-fun b!434607 () Bool)

(declare-fun res!256045 () Bool)

(assert (=> b!434607 (=> (not res!256045) (not e!256828))))

(assert (=> b!434607 (= res!256045 (validKeyInArray!0 k0!794))))

(declare-fun b!434608 () Bool)

(declare-fun res!256046 () Bool)

(assert (=> b!434608 (=> (not res!256046) (not e!256828))))

(declare-fun arrayContainsKey!0 (array!26601 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!434608 (= res!256046 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!18717 () Bool)

(declare-fun tp!36264 () Bool)

(declare-fun e!256827 () Bool)

(assert (=> mapNonEmpty!18717 (= mapRes!18717 (and tp!36264 e!256827))))

(declare-fun mapRest!18717 () (Array (_ BitVec 32) ValueCell!5355))

(declare-fun mapKey!18717 () (_ BitVec 32))

(declare-fun mapValue!18717 () ValueCell!5355)

(assert (=> mapNonEmpty!18717 (= (arr!12748 _values!549) (store mapRest!18717 mapKey!18717 mapValue!18717))))

(declare-fun b!434609 () Bool)

(assert (=> b!434609 (= e!256828 e!256830)))

(declare-fun res!256041 () Bool)

(assert (=> b!434609 (=> (not res!256041) (not e!256830))))

(assert (=> b!434609 (= res!256041 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!199988 mask!1025))))

(assert (=> b!434609 (= lt!199988 (array!26602 (store (arr!12747 _keys!709) i!563 k0!794) (size!13099 _keys!709)))))

(declare-fun b!434610 () Bool)

(declare-fun res!256044 () Bool)

(assert (=> b!434610 (=> (not res!256044) (not e!256828))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!434610 (= res!256044 (validMask!0 mask!1025))))

(declare-fun b!434611 () Bool)

(assert (=> b!434611 (= e!256831 true)))

(assert (=> b!434611 (= lt!199983 (+!1390 (+!1390 lt!199992 lt!199987) lt!199991))))

(declare-fun lt!199982 () Unit!12852)

(declare-fun addCommutativeForDiffKeys!396 (ListLongMap!6459 (_ BitVec 64) V!16301 (_ BitVec 64) V!16301) Unit!12852)

(assert (=> b!434611 (= lt!199982 (addCommutativeForDiffKeys!396 lt!199992 k0!794 v!412 (select (arr!12747 _keys!709) from!863) lt!199984))))

(declare-fun b!434612 () Bool)

(declare-fun res!256047 () Bool)

(assert (=> b!434612 (=> (not res!256047) (not e!256828))))

(assert (=> b!434612 (= res!256047 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13099 _keys!709))))))

(declare-fun b!434613 () Bool)

(declare-fun res!256043 () Bool)

(assert (=> b!434613 (=> (not res!256043) (not e!256828))))

(declare-datatypes ((List!7580 0))(
  ( (Nil!7577) (Cons!7576 (h!8432 (_ BitVec 64)) (t!13282 List!7580)) )
))
(declare-fun arrayNoDuplicates!0 (array!26601 (_ BitVec 32) List!7580) Bool)

(assert (=> b!434613 (= res!256043 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7577))))

(declare-fun b!434614 () Bool)

(declare-fun Unit!12854 () Unit!12852)

(assert (=> b!434614 (= e!256834 Unit!12854)))

(declare-fun lt!199985 () Unit!12852)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26601 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12852)

(assert (=> b!434614 (= lt!199985 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!434614 false))

(declare-fun b!434615 () Bool)

(assert (=> b!434615 (= e!256827 tp_is_empty!11397)))

(declare-fun b!434616 () Bool)

(assert (=> b!434616 (= e!256830 e!256833)))

(declare-fun res!256050 () Bool)

(assert (=> b!434616 (=> (not res!256050) (not e!256833))))

(assert (=> b!434616 (= res!256050 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(assert (=> b!434616 (= lt!199978 (getCurrentListMapNoExtraKeys!1430 lt!199988 lt!199979 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!434616 (= lt!199979 (array!26604 (store (arr!12748 _values!549) i!563 (ValueCellFull!5355 v!412)) (size!13100 _values!549)))))

(declare-fun lt!199990 () ListLongMap!6459)

(assert (=> b!434616 (= lt!199990 (getCurrentListMapNoExtraKeys!1430 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!434617 () Bool)

(declare-fun e!256829 () Bool)

(assert (=> b!434617 (= e!256832 (and e!256829 mapRes!18717))))

(declare-fun condMapEmpty!18717 () Bool)

(declare-fun mapDefault!18717 () ValueCell!5355)

(assert (=> b!434617 (= condMapEmpty!18717 (= (arr!12748 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5355)) mapDefault!18717)))))

(declare-fun b!434618 () Bool)

(declare-fun Unit!12855 () Unit!12852)

(assert (=> b!434618 (= e!256834 Unit!12855)))

(declare-fun b!434619 () Bool)

(assert (=> b!434619 (= e!256829 tp_is_empty!11397)))

(declare-fun b!434620 () Bool)

(declare-fun res!256038 () Bool)

(assert (=> b!434620 (=> (not res!256038) (not e!256830))))

(assert (=> b!434620 (= res!256038 (arrayNoDuplicates!0 lt!199988 #b00000000000000000000000000000000 Nil!7577))))

(assert (= (and start!39986 res!256048) b!434610))

(assert (= (and b!434610 res!256044) b!434604))

(assert (= (and b!434604 res!256042) b!434603))

(assert (= (and b!434603 res!256037) b!434613))

(assert (= (and b!434613 res!256043) b!434612))

(assert (= (and b!434612 res!256047) b!434607))

(assert (= (and b!434607 res!256045) b!434606))

(assert (= (and b!434606 res!256040) b!434608))

(assert (= (and b!434608 res!256046) b!434609))

(assert (= (and b!434609 res!256041) b!434620))

(assert (= (and b!434620 res!256038) b!434601))

(assert (= (and b!434601 res!256049) b!434616))

(assert (= (and b!434616 res!256050) b!434605))

(assert (= (and b!434605 (not res!256039)) b!434602))

(assert (= (and b!434602 c!55628) b!434614))

(assert (= (and b!434602 (not c!55628)) b!434618))

(assert (= (and b!434602 (not res!256036)) b!434611))

(assert (= (and b!434617 condMapEmpty!18717) mapIsEmpty!18717))

(assert (= (and b!434617 (not condMapEmpty!18717)) mapNonEmpty!18717))

(get-info :version)

(assert (= (and mapNonEmpty!18717 ((_ is ValueCellFull!5355) mapValue!18717)) b!434615))

(assert (= (and b!434617 ((_ is ValueCellFull!5355) mapDefault!18717)) b!434619))

(assert (= start!39986 b!434617))

(declare-fun b_lambda!9363 () Bool)

(assert (=> (not b_lambda!9363) (not b!434602)))

(declare-fun t!13280 () Bool)

(declare-fun tb!3659 () Bool)

(assert (=> (and start!39986 (= defaultEntry!557 defaultEntry!557) t!13280) tb!3659))

(declare-fun result!6837 () Bool)

(assert (=> tb!3659 (= result!6837 tp_is_empty!11397)))

(assert (=> b!434602 t!13280))

(declare-fun b_and!18169 () Bool)

(assert (= b_and!18167 (and (=> t!13280 result!6837) b_and!18169)))

(declare-fun m!422567 () Bool)

(assert (=> b!434611 m!422567))

(assert (=> b!434611 m!422567))

(declare-fun m!422569 () Bool)

(assert (=> b!434611 m!422569))

(declare-fun m!422571 () Bool)

(assert (=> b!434611 m!422571))

(assert (=> b!434611 m!422571))

(declare-fun m!422573 () Bool)

(assert (=> b!434611 m!422573))

(declare-fun m!422575 () Bool)

(assert (=> start!39986 m!422575))

(declare-fun m!422577 () Bool)

(assert (=> start!39986 m!422577))

(declare-fun m!422579 () Bool)

(assert (=> b!434620 m!422579))

(declare-fun m!422581 () Bool)

(assert (=> b!434603 m!422581))

(declare-fun m!422583 () Bool)

(assert (=> b!434607 m!422583))

(declare-fun m!422585 () Bool)

(assert (=> b!434613 m!422585))

(declare-fun m!422587 () Bool)

(assert (=> b!434608 m!422587))

(assert (=> b!434605 m!422571))

(declare-fun m!422589 () Bool)

(assert (=> b!434605 m!422589))

(declare-fun m!422591 () Bool)

(assert (=> b!434605 m!422591))

(declare-fun m!422593 () Bool)

(assert (=> b!434605 m!422593))

(assert (=> b!434605 m!422571))

(declare-fun m!422595 () Bool)

(assert (=> b!434605 m!422595))

(declare-fun m!422597 () Bool)

(assert (=> b!434605 m!422597))

(declare-fun m!422599 () Bool)

(assert (=> b!434609 m!422599))

(declare-fun m!422601 () Bool)

(assert (=> b!434609 m!422601))

(declare-fun m!422603 () Bool)

(assert (=> b!434614 m!422603))

(assert (=> b!434602 m!422571))

(declare-fun m!422605 () Bool)

(assert (=> b!434602 m!422605))

(declare-fun m!422607 () Bool)

(assert (=> b!434602 m!422607))

(declare-fun m!422609 () Bool)

(assert (=> b!434602 m!422609))

(assert (=> b!434602 m!422607))

(assert (=> b!434602 m!422605))

(declare-fun m!422611 () Bool)

(assert (=> b!434602 m!422611))

(declare-fun m!422613 () Bool)

(assert (=> b!434610 m!422613))

(declare-fun m!422615 () Bool)

(assert (=> b!434616 m!422615))

(declare-fun m!422617 () Bool)

(assert (=> b!434616 m!422617))

(declare-fun m!422619 () Bool)

(assert (=> b!434616 m!422619))

(declare-fun m!422621 () Bool)

(assert (=> b!434606 m!422621))

(declare-fun m!422623 () Bool)

(assert (=> mapNonEmpty!18717 m!422623))

(check-sat b_and!18169 (not b!434609) tp_is_empty!11397 (not b!434607) (not b!434605) (not b!434614) (not b!434602) (not b!434603) (not b!434613) (not b!434620) (not b!434610) (not start!39986) (not b_lambda!9363) (not b!434616) (not b_next!10245) (not mapNonEmpty!18717) (not b!434611) (not b!434608))
(check-sat b_and!18169 (not b_next!10245))
