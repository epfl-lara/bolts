; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37182 () Bool)

(assert start!37182)

(declare-fun b_free!8301 () Bool)

(declare-fun b_next!8301 () Bool)

(assert (=> start!37182 (= b_free!8301 (not b_next!8301))))

(declare-fun tp!29619 () Bool)

(declare-fun b_and!15561 () Bool)

(assert (=> start!37182 (= tp!29619 b_and!15561)))

(declare-fun b!375012 () Bool)

(declare-fun e!228506 () Bool)

(declare-fun tp_is_empty!8949 () Bool)

(assert (=> b!375012 (= e!228506 tp_is_empty!8949)))

(declare-fun res!211717 () Bool)

(declare-fun e!228507 () Bool)

(assert (=> start!37182 (=> (not res!211717) (not e!228507))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37182 (= res!211717 (validMask!0 mask!970))))

(assert (=> start!37182 e!228507))

(declare-datatypes ((V!13037 0))(
  ( (V!13038 (val!4519 Int)) )
))
(declare-datatypes ((ValueCell!4131 0))(
  ( (ValueCellFull!4131 (v!6712 V!13037)) (EmptyCell!4131) )
))
(declare-datatypes ((array!21797 0))(
  ( (array!21798 (arr!10364 (Array (_ BitVec 32) ValueCell!4131)) (size!10716 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21797)

(declare-fun e!228504 () Bool)

(declare-fun array_inv!7636 (array!21797) Bool)

(assert (=> start!37182 (and (array_inv!7636 _values!506) e!228504)))

(assert (=> start!37182 tp!29619))

(assert (=> start!37182 true))

(assert (=> start!37182 tp_is_empty!8949))

(declare-datatypes ((array!21799 0))(
  ( (array!21800 (arr!10365 (Array (_ BitVec 32) (_ BitVec 64))) (size!10717 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21799)

(declare-fun array_inv!7637 (array!21799) Bool)

(assert (=> start!37182 (array_inv!7637 _keys!658)))

(declare-fun b!375013 () Bool)

(declare-fun res!211714 () Bool)

(assert (=> b!375013 (=> (not res!211714) (not e!228507))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!375013 (= res!211714 (or (= (select (arr!10365 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10365 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!375014 () Bool)

(declare-fun res!211718 () Bool)

(assert (=> b!375014 (=> (not res!211718) (not e!228507))))

(declare-datatypes ((List!5855 0))(
  ( (Nil!5852) (Cons!5851 (h!6707 (_ BitVec 64)) (t!11013 List!5855)) )
))
(declare-fun arrayNoDuplicates!0 (array!21799 (_ BitVec 32) List!5855) Bool)

(assert (=> b!375014 (= res!211718 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5852))))

(declare-fun b!375015 () Bool)

(declare-fun res!211721 () Bool)

(declare-fun e!228500 () Bool)

(assert (=> b!375015 (=> (not res!211721) (not e!228500))))

(declare-fun lt!173447 () array!21799)

(assert (=> b!375015 (= res!211721 (arrayNoDuplicates!0 lt!173447 #b00000000000000000000000000000000 Nil!5852))))

(declare-fun b!375016 () Bool)

(declare-fun res!211722 () Bool)

(assert (=> b!375016 (=> (not res!211722) (not e!228507))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!375016 (= res!211722 (and (= (size!10716 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10717 _keys!658) (size!10716 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!375017 () Bool)

(declare-fun e!228503 () Bool)

(declare-fun mapRes!14988 () Bool)

(assert (=> b!375017 (= e!228504 (and e!228503 mapRes!14988))))

(declare-fun condMapEmpty!14988 () Bool)

(declare-fun mapDefault!14988 () ValueCell!4131)

(assert (=> b!375017 (= condMapEmpty!14988 (= (arr!10364 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4131)) mapDefault!14988)))))

(declare-fun b!375018 () Bool)

(declare-fun e!228501 () Bool)

(declare-fun e!228505 () Bool)

(assert (=> b!375018 (= e!228501 e!228505)))

(declare-fun res!211720 () Bool)

(assert (=> b!375018 (=> res!211720 e!228505)))

(declare-fun k0!778 () (_ BitVec 64))

(assert (=> b!375018 (= res!211720 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!5984 0))(
  ( (tuple2!5985 (_1!3002 (_ BitVec 64)) (_2!3002 V!13037)) )
))
(declare-datatypes ((List!5856 0))(
  ( (Nil!5853) (Cons!5852 (h!6708 tuple2!5984) (t!11014 List!5856)) )
))
(declare-datatypes ((ListLongMap!4911 0))(
  ( (ListLongMap!4912 (toList!2471 List!5856)) )
))
(declare-fun lt!173448 () ListLongMap!4911)

(declare-fun lt!173457 () ListLongMap!4911)

(assert (=> b!375018 (= lt!173448 lt!173457)))

(declare-fun lt!173454 () ListLongMap!4911)

(declare-fun lt!173449 () tuple2!5984)

(declare-fun +!812 (ListLongMap!4911 tuple2!5984) ListLongMap!4911)

(assert (=> b!375018 (= lt!173457 (+!812 lt!173454 lt!173449))))

(declare-fun v!373 () V!13037)

(declare-fun lt!173442 () ListLongMap!4911)

(declare-datatypes ((Unit!11527 0))(
  ( (Unit!11528) )
))
(declare-fun lt!173450 () Unit!11527)

(declare-fun zeroValue!472 () V!13037)

(declare-fun addCommutativeForDiffKeys!241 (ListLongMap!4911 (_ BitVec 64) V!13037 (_ BitVec 64) V!13037) Unit!11527)

(assert (=> b!375018 (= lt!173450 (addCommutativeForDiffKeys!241 lt!173442 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun lt!173453 () ListLongMap!4911)

(declare-fun lt!173458 () tuple2!5984)

(assert (=> b!375018 (= lt!173453 (+!812 lt!173448 lt!173458))))

(declare-fun lt!173452 () ListLongMap!4911)

(declare-fun lt!173444 () tuple2!5984)

(assert (=> b!375018 (= lt!173448 (+!812 lt!173452 lt!173444))))

(declare-fun lt!173451 () ListLongMap!4911)

(declare-fun lt!173446 () ListLongMap!4911)

(assert (=> b!375018 (= lt!173451 lt!173446)))

(assert (=> b!375018 (= lt!173446 (+!812 lt!173454 lt!173458))))

(assert (=> b!375018 (= lt!173454 (+!812 lt!173442 lt!173444))))

(declare-fun lt!173443 () ListLongMap!4911)

(assert (=> b!375018 (= lt!173453 (+!812 (+!812 lt!173443 lt!173444) lt!173458))))

(declare-fun minValue!472 () V!13037)

(assert (=> b!375018 (= lt!173458 (tuple2!5985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!375018 (= lt!173444 (tuple2!5985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!375019 () Bool)

(declare-fun res!211715 () Bool)

(assert (=> b!375019 (=> (not res!211715) (not e!228507))))

(assert (=> b!375019 (= res!211715 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10717 _keys!658))))))

(declare-fun mapIsEmpty!14988 () Bool)

(assert (=> mapIsEmpty!14988 mapRes!14988))

(declare-fun b!375020 () Bool)

(declare-fun res!211719 () Bool)

(assert (=> b!375020 (=> (not res!211719) (not e!228507))))

(declare-fun arrayContainsKey!0 (array!21799 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!375020 (= res!211719 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!375021 () Bool)

(declare-fun res!211724 () Bool)

(assert (=> b!375021 (=> (not res!211724) (not e!228507))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!375021 (= res!211724 (validKeyInArray!0 k0!778))))

(declare-fun b!375022 () Bool)

(assert (=> b!375022 (= e!228507 e!228500)))

(declare-fun res!211713 () Bool)

(assert (=> b!375022 (=> (not res!211713) (not e!228500))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21799 (_ BitVec 32)) Bool)

(assert (=> b!375022 (= res!211713 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!173447 mask!970))))

(assert (=> b!375022 (= lt!173447 (array!21800 (store (arr!10365 _keys!658) i!548 k0!778) (size!10717 _keys!658)))))

(declare-fun b!375023 () Bool)

(assert (=> b!375023 (= e!228503 tp_is_empty!8949)))

(declare-fun b!375024 () Bool)

(assert (=> b!375024 (= e!228500 (not e!228501))))

(declare-fun res!211716 () Bool)

(assert (=> b!375024 (=> res!211716 e!228501)))

(assert (=> b!375024 (= res!211716 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun getCurrentListMap!1913 (array!21799 array!21797 (_ BitVec 32) (_ BitVec 32) V!13037 V!13037 (_ BitVec 32) Int) ListLongMap!4911)

(assert (=> b!375024 (= lt!173451 (getCurrentListMap!1913 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!173455 () array!21797)

(assert (=> b!375024 (= lt!173453 (getCurrentListMap!1913 lt!173447 lt!173455 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!375024 (and (= lt!173443 lt!173452) (= lt!173452 lt!173443))))

(assert (=> b!375024 (= lt!173452 (+!812 lt!173442 lt!173449))))

(assert (=> b!375024 (= lt!173449 (tuple2!5985 k0!778 v!373))))

(declare-fun lt!173445 () Unit!11527)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!64 (array!21799 array!21797 (_ BitVec 32) (_ BitVec 32) V!13037 V!13037 (_ BitVec 32) (_ BitVec 64) V!13037 (_ BitVec 32) Int) Unit!11527)

(assert (=> b!375024 (= lt!173445 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!64 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!731 (array!21799 array!21797 (_ BitVec 32) (_ BitVec 32) V!13037 V!13037 (_ BitVec 32) Int) ListLongMap!4911)

(assert (=> b!375024 (= lt!173443 (getCurrentListMapNoExtraKeys!731 lt!173447 lt!173455 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!375024 (= lt!173455 (array!21798 (store (arr!10364 _values!506) i!548 (ValueCellFull!4131 v!373)) (size!10716 _values!506)))))

(assert (=> b!375024 (= lt!173442 (getCurrentListMapNoExtraKeys!731 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun mapNonEmpty!14988 () Bool)

(declare-fun tp!29618 () Bool)

(assert (=> mapNonEmpty!14988 (= mapRes!14988 (and tp!29618 e!228506))))

(declare-fun mapKey!14988 () (_ BitVec 32))

(declare-fun mapValue!14988 () ValueCell!4131)

(declare-fun mapRest!14988 () (Array (_ BitVec 32) ValueCell!4131))

(assert (=> mapNonEmpty!14988 (= (arr!10364 _values!506) (store mapRest!14988 mapKey!14988 mapValue!14988))))

(declare-fun b!375025 () Bool)

(declare-fun res!211723 () Bool)

(assert (=> b!375025 (=> (not res!211723) (not e!228507))))

(assert (=> b!375025 (= res!211723 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!375026 () Bool)

(assert (=> b!375026 (= e!228505 true)))

(assert (=> b!375026 (= (+!812 lt!173457 lt!173458) (+!812 lt!173446 lt!173449))))

(declare-fun lt!173456 () Unit!11527)

(assert (=> b!375026 (= lt!173456 (addCommutativeForDiffKeys!241 lt!173454 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (= (and start!37182 res!211717) b!375016))

(assert (= (and b!375016 res!211722) b!375025))

(assert (= (and b!375025 res!211723) b!375014))

(assert (= (and b!375014 res!211718) b!375019))

(assert (= (and b!375019 res!211715) b!375021))

(assert (= (and b!375021 res!211724) b!375013))

(assert (= (and b!375013 res!211714) b!375020))

(assert (= (and b!375020 res!211719) b!375022))

(assert (= (and b!375022 res!211713) b!375015))

(assert (= (and b!375015 res!211721) b!375024))

(assert (= (and b!375024 (not res!211716)) b!375018))

(assert (= (and b!375018 (not res!211720)) b!375026))

(assert (= (and b!375017 condMapEmpty!14988) mapIsEmpty!14988))

(assert (= (and b!375017 (not condMapEmpty!14988)) mapNonEmpty!14988))

(get-info :version)

(assert (= (and mapNonEmpty!14988 ((_ is ValueCellFull!4131) mapValue!14988)) b!375012))

(assert (= (and b!375017 ((_ is ValueCellFull!4131) mapDefault!14988)) b!375023))

(assert (= start!37182 b!375017))

(declare-fun m!371561 () Bool)

(assert (=> b!375014 m!371561))

(declare-fun m!371563 () Bool)

(assert (=> b!375021 m!371563))

(declare-fun m!371565 () Bool)

(assert (=> mapNonEmpty!14988 m!371565))

(declare-fun m!371567 () Bool)

(assert (=> b!375022 m!371567))

(declare-fun m!371569 () Bool)

(assert (=> b!375022 m!371569))

(declare-fun m!371571 () Bool)

(assert (=> b!375025 m!371571))

(declare-fun m!371573 () Bool)

(assert (=> b!375018 m!371573))

(declare-fun m!371575 () Bool)

(assert (=> b!375018 m!371575))

(declare-fun m!371577 () Bool)

(assert (=> b!375018 m!371577))

(declare-fun m!371579 () Bool)

(assert (=> b!375018 m!371579))

(declare-fun m!371581 () Bool)

(assert (=> b!375018 m!371581))

(declare-fun m!371583 () Bool)

(assert (=> b!375018 m!371583))

(declare-fun m!371585 () Bool)

(assert (=> b!375018 m!371585))

(assert (=> b!375018 m!371579))

(declare-fun m!371587 () Bool)

(assert (=> b!375018 m!371587))

(declare-fun m!371589 () Bool)

(assert (=> b!375024 m!371589))

(declare-fun m!371591 () Bool)

(assert (=> b!375024 m!371591))

(declare-fun m!371593 () Bool)

(assert (=> b!375024 m!371593))

(declare-fun m!371595 () Bool)

(assert (=> b!375024 m!371595))

(declare-fun m!371597 () Bool)

(assert (=> b!375024 m!371597))

(declare-fun m!371599 () Bool)

(assert (=> b!375024 m!371599))

(declare-fun m!371601 () Bool)

(assert (=> b!375024 m!371601))

(declare-fun m!371603 () Bool)

(assert (=> b!375015 m!371603))

(declare-fun m!371605 () Bool)

(assert (=> b!375026 m!371605))

(declare-fun m!371607 () Bool)

(assert (=> b!375026 m!371607))

(declare-fun m!371609 () Bool)

(assert (=> b!375026 m!371609))

(declare-fun m!371611 () Bool)

(assert (=> b!375013 m!371611))

(declare-fun m!371613 () Bool)

(assert (=> start!37182 m!371613))

(declare-fun m!371615 () Bool)

(assert (=> start!37182 m!371615))

(declare-fun m!371617 () Bool)

(assert (=> start!37182 m!371617))

(declare-fun m!371619 () Bool)

(assert (=> b!375020 m!371619))

(check-sat (not b!375015) (not b!375018) (not mapNonEmpty!14988) (not b!375025) (not b!375020) tp_is_empty!8949 (not b!375024) (not b_next!8301) (not b!375014) (not b!375022) (not b!375021) b_and!15561 (not b!375026) (not start!37182))
(check-sat b_and!15561 (not b_next!8301))
