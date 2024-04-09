; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41072 () Bool)

(assert start!41072)

(declare-fun b_free!10977 () Bool)

(declare-fun b_next!10977 () Bool)

(assert (=> start!41072 (= b_free!10977 (not b_next!10977))))

(declare-fun tp!38761 () Bool)

(declare-fun b_and!19179 () Bool)

(assert (=> start!41072 (= tp!38761 b_and!19179)))

(declare-fun b!457737 () Bool)

(declare-fun res!273474 () Bool)

(declare-fun e!267291 () Bool)

(assert (=> b!457737 (=> (not res!273474) (not e!267291))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!28397 0))(
  ( (array!28398 (arr!13638 (Array (_ BitVec 32) (_ BitVec 64))) (size!13990 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28397)

(assert (=> b!457737 (= res!273474 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13990 _keys!709))))))

(declare-fun mapNonEmpty!20116 () Bool)

(declare-fun mapRes!20116 () Bool)

(declare-fun tp!38760 () Bool)

(declare-fun e!267288 () Bool)

(assert (=> mapNonEmpty!20116 (= mapRes!20116 (and tp!38760 e!267288))))

(declare-datatypes ((V!17525 0))(
  ( (V!17526 (val!6202 Int)) )
))
(declare-datatypes ((ValueCell!5814 0))(
  ( (ValueCellFull!5814 (v!8468 V!17525)) (EmptyCell!5814) )
))
(declare-fun mapRest!20116 () (Array (_ BitVec 32) ValueCell!5814))

(declare-datatypes ((array!28399 0))(
  ( (array!28400 (arr!13639 (Array (_ BitVec 32) ValueCell!5814)) (size!13991 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28399)

(declare-fun mapValue!20116 () ValueCell!5814)

(declare-fun mapKey!20116 () (_ BitVec 32))

(assert (=> mapNonEmpty!20116 (= (arr!13639 _values!549) (store mapRest!20116 mapKey!20116 mapValue!20116))))

(declare-fun b!457738 () Bool)

(declare-fun res!273473 () Bool)

(declare-fun e!267290 () Bool)

(assert (=> b!457738 (=> (not res!273473) (not e!267290))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!457738 (= res!273473 (bvsle from!863 i!563))))

(declare-fun b!457739 () Bool)

(declare-fun e!267293 () Bool)

(declare-fun e!267292 () Bool)

(assert (=> b!457739 (= e!267293 (and e!267292 mapRes!20116))))

(declare-fun condMapEmpty!20116 () Bool)

(declare-fun mapDefault!20116 () ValueCell!5814)

(assert (=> b!457739 (= condMapEmpty!20116 (= (arr!13639 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5814)) mapDefault!20116)))))

(declare-fun b!457740 () Bool)

(assert (=> b!457740 (= e!267291 e!267290)))

(declare-fun res!273482 () Bool)

(assert (=> b!457740 (=> (not res!273482) (not e!267290))))

(declare-fun lt!207105 () array!28397)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28397 (_ BitVec 32)) Bool)

(assert (=> b!457740 (= res!273482 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!207105 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!457740 (= lt!207105 (array!28398 (store (arr!13638 _keys!709) i!563 k0!794) (size!13990 _keys!709)))))

(declare-fun b!457741 () Bool)

(declare-fun res!273472 () Bool)

(assert (=> b!457741 (=> (not res!273472) (not e!267291))))

(declare-fun arrayContainsKey!0 (array!28397 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!457741 (= res!273472 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!457742 () Bool)

(declare-fun res!273477 () Bool)

(assert (=> b!457742 (=> (not res!273477) (not e!267291))))

(assert (=> b!457742 (= res!273477 (or (= (select (arr!13638 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13638 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!457743 () Bool)

(declare-fun tp_is_empty!12315 () Bool)

(assert (=> b!457743 (= e!267288 tp_is_empty!12315)))

(declare-fun b!457744 () Bool)

(declare-fun res!273481 () Bool)

(assert (=> b!457744 (=> (not res!273481) (not e!267291))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!457744 (= res!273481 (validKeyInArray!0 k0!794))))

(declare-fun b!457745 () Bool)

(assert (=> b!457745 (= e!267292 tp_is_empty!12315)))

(declare-fun b!457746 () Bool)

(declare-fun res!273483 () Bool)

(assert (=> b!457746 (=> (not res!273483) (not e!267291))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!457746 (= res!273483 (validMask!0 mask!1025))))

(declare-fun b!457747 () Bool)

(declare-fun res!273479 () Bool)

(assert (=> b!457747 (=> (not res!273479) (not e!267290))))

(declare-datatypes ((List!8239 0))(
  ( (Nil!8236) (Cons!8235 (h!9091 (_ BitVec 64)) (t!14103 List!8239)) )
))
(declare-fun arrayNoDuplicates!0 (array!28397 (_ BitVec 32) List!8239) Bool)

(assert (=> b!457747 (= res!273479 (arrayNoDuplicates!0 lt!207105 #b00000000000000000000000000000000 Nil!8236))))

(declare-fun b!457748 () Bool)

(declare-fun e!267295 () Bool)

(declare-fun e!267294 () Bool)

(assert (=> b!457748 (= e!267295 (not e!267294))))

(declare-fun res!273478 () Bool)

(assert (=> b!457748 (=> res!273478 e!267294)))

(assert (=> b!457748 (= res!273478 (not (validKeyInArray!0 (select (arr!13638 _keys!709) from!863))))))

(declare-datatypes ((tuple2!8136 0))(
  ( (tuple2!8137 (_1!4078 (_ BitVec 64)) (_2!4078 V!17525)) )
))
(declare-datatypes ((List!8240 0))(
  ( (Nil!8237) (Cons!8236 (h!9092 tuple2!8136) (t!14104 List!8240)) )
))
(declare-datatypes ((ListLongMap!7063 0))(
  ( (ListLongMap!7064 (toList!3547 List!8240)) )
))
(declare-fun lt!207106 () ListLongMap!7063)

(declare-fun lt!207102 () ListLongMap!7063)

(assert (=> b!457748 (= lt!207106 lt!207102)))

(declare-fun lt!207104 () ListLongMap!7063)

(declare-fun v!412 () V!17525)

(declare-fun +!1567 (ListLongMap!7063 tuple2!8136) ListLongMap!7063)

(assert (=> b!457748 (= lt!207102 (+!1567 lt!207104 (tuple2!8137 k0!794 v!412)))))

(declare-fun lt!207099 () array!28399)

(declare-fun minValue!515 () V!17525)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17525)

(declare-fun getCurrentListMapNoExtraKeys!1720 (array!28397 array!28399 (_ BitVec 32) (_ BitVec 32) V!17525 V!17525 (_ BitVec 32) Int) ListLongMap!7063)

(assert (=> b!457748 (= lt!207106 (getCurrentListMapNoExtraKeys!1720 lt!207105 lt!207099 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!457748 (= lt!207104 (getCurrentListMapNoExtraKeys!1720 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!13251 0))(
  ( (Unit!13252) )
))
(declare-fun lt!207101 () Unit!13251)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!728 (array!28397 array!28399 (_ BitVec 32) (_ BitVec 32) V!17525 V!17525 (_ BitVec 32) (_ BitVec 64) V!17525 (_ BitVec 32) Int) Unit!13251)

(assert (=> b!457748 (= lt!207101 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!728 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!273471 () Bool)

(assert (=> start!41072 (=> (not res!273471) (not e!267291))))

(assert (=> start!41072 (= res!273471 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13990 _keys!709))))))

(assert (=> start!41072 e!267291))

(assert (=> start!41072 tp_is_empty!12315))

(assert (=> start!41072 tp!38761))

(assert (=> start!41072 true))

(declare-fun array_inv!9866 (array!28399) Bool)

(assert (=> start!41072 (and (array_inv!9866 _values!549) e!267293)))

(declare-fun array_inv!9867 (array!28397) Bool)

(assert (=> start!41072 (array_inv!9867 _keys!709)))

(declare-fun b!457749 () Bool)

(declare-fun res!273475 () Bool)

(assert (=> b!457749 (=> (not res!273475) (not e!267291))))

(assert (=> b!457749 (= res!273475 (and (= (size!13991 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13990 _keys!709) (size!13991 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!457750 () Bool)

(assert (=> b!457750 (= e!267290 e!267295)))

(declare-fun res!273476 () Bool)

(assert (=> b!457750 (=> (not res!273476) (not e!267295))))

(assert (=> b!457750 (= res!273476 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!207103 () ListLongMap!7063)

(assert (=> b!457750 (= lt!207103 (getCurrentListMapNoExtraKeys!1720 lt!207105 lt!207099 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!457750 (= lt!207099 (array!28400 (store (arr!13639 _values!549) i!563 (ValueCellFull!5814 v!412)) (size!13991 _values!549)))))

(declare-fun lt!207100 () ListLongMap!7063)

(assert (=> b!457750 (= lt!207100 (getCurrentListMapNoExtraKeys!1720 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!457751 () Bool)

(declare-fun res!273470 () Bool)

(assert (=> b!457751 (=> (not res!273470) (not e!267291))))

(assert (=> b!457751 (= res!273470 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8236))))

(declare-fun b!457752 () Bool)

(assert (=> b!457752 (= e!267294 true)))

(declare-fun get!6727 (ValueCell!5814 V!17525) V!17525)

(declare-fun dynLambda!879 (Int (_ BitVec 64)) V!17525)

(assert (=> b!457752 (= lt!207103 (+!1567 lt!207102 (tuple2!8137 (select (arr!13638 _keys!709) from!863) (get!6727 (select (arr!13639 _values!549) from!863) (dynLambda!879 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun mapIsEmpty!20116 () Bool)

(assert (=> mapIsEmpty!20116 mapRes!20116))

(declare-fun b!457753 () Bool)

(declare-fun res!273480 () Bool)

(assert (=> b!457753 (=> (not res!273480) (not e!267291))))

(assert (=> b!457753 (= res!273480 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(assert (= (and start!41072 res!273471) b!457746))

(assert (= (and b!457746 res!273483) b!457749))

(assert (= (and b!457749 res!273475) b!457753))

(assert (= (and b!457753 res!273480) b!457751))

(assert (= (and b!457751 res!273470) b!457737))

(assert (= (and b!457737 res!273474) b!457744))

(assert (= (and b!457744 res!273481) b!457742))

(assert (= (and b!457742 res!273477) b!457741))

(assert (= (and b!457741 res!273472) b!457740))

(assert (= (and b!457740 res!273482) b!457747))

(assert (= (and b!457747 res!273479) b!457738))

(assert (= (and b!457738 res!273473) b!457750))

(assert (= (and b!457750 res!273476) b!457748))

(assert (= (and b!457748 (not res!273478)) b!457752))

(assert (= (and b!457739 condMapEmpty!20116) mapIsEmpty!20116))

(assert (= (and b!457739 (not condMapEmpty!20116)) mapNonEmpty!20116))

(get-info :version)

(assert (= (and mapNonEmpty!20116 ((_ is ValueCellFull!5814) mapValue!20116)) b!457743))

(assert (= (and b!457739 ((_ is ValueCellFull!5814) mapDefault!20116)) b!457745))

(assert (= start!41072 b!457739))

(declare-fun b_lambda!9773 () Bool)

(assert (=> (not b_lambda!9773) (not b!457752)))

(declare-fun t!14102 () Bool)

(declare-fun tb!3821 () Bool)

(assert (=> (and start!41072 (= defaultEntry!557 defaultEntry!557) t!14102) tb!3821))

(declare-fun result!7175 () Bool)

(assert (=> tb!3821 (= result!7175 tp_is_empty!12315)))

(assert (=> b!457752 t!14102))

(declare-fun b_and!19181 () Bool)

(assert (= b_and!19179 (and (=> t!14102 result!7175) b_and!19181)))

(declare-fun m!441101 () Bool)

(assert (=> b!457742 m!441101))

(declare-fun m!441103 () Bool)

(assert (=> b!457753 m!441103))

(declare-fun m!441105 () Bool)

(assert (=> b!457746 m!441105))

(declare-fun m!441107 () Bool)

(assert (=> b!457740 m!441107))

(declare-fun m!441109 () Bool)

(assert (=> b!457740 m!441109))

(declare-fun m!441111 () Bool)

(assert (=> b!457751 m!441111))

(declare-fun m!441113 () Bool)

(assert (=> b!457747 m!441113))

(declare-fun m!441115 () Bool)

(assert (=> mapNonEmpty!20116 m!441115))

(declare-fun m!441117 () Bool)

(assert (=> b!457741 m!441117))

(declare-fun m!441119 () Bool)

(assert (=> b!457752 m!441119))

(declare-fun m!441121 () Bool)

(assert (=> b!457752 m!441121))

(declare-fun m!441123 () Bool)

(assert (=> b!457752 m!441123))

(assert (=> b!457752 m!441123))

(assert (=> b!457752 m!441121))

(declare-fun m!441125 () Bool)

(assert (=> b!457752 m!441125))

(declare-fun m!441127 () Bool)

(assert (=> b!457752 m!441127))

(declare-fun m!441129 () Bool)

(assert (=> b!457750 m!441129))

(declare-fun m!441131 () Bool)

(assert (=> b!457750 m!441131))

(declare-fun m!441133 () Bool)

(assert (=> b!457750 m!441133))

(assert (=> b!457748 m!441119))

(declare-fun m!441135 () Bool)

(assert (=> b!457748 m!441135))

(declare-fun m!441137 () Bool)

(assert (=> b!457748 m!441137))

(assert (=> b!457748 m!441119))

(declare-fun m!441139 () Bool)

(assert (=> b!457748 m!441139))

(declare-fun m!441141 () Bool)

(assert (=> b!457748 m!441141))

(declare-fun m!441143 () Bool)

(assert (=> b!457748 m!441143))

(declare-fun m!441145 () Bool)

(assert (=> start!41072 m!441145))

(declare-fun m!441147 () Bool)

(assert (=> start!41072 m!441147))

(declare-fun m!441149 () Bool)

(assert (=> b!457744 m!441149))

(check-sat (not b_next!10977) (not b_lambda!9773) (not start!41072) (not b!457751) (not b!457744) (not b!457741) (not b!457747) (not b!457750) (not b!457746) (not mapNonEmpty!20116) (not b!457752) (not b!457753) b_and!19181 (not b!457740) (not b!457748) tp_is_empty!12315)
(check-sat b_and!19181 (not b_next!10977))
