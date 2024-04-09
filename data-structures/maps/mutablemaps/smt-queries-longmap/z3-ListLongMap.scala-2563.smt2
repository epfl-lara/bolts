; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39206 () Bool)

(assert start!39206)

(declare-fun b_free!9465 () Bool)

(declare-fun b_next!9465 () Bool)

(assert (=> start!39206 (= b_free!9465 (not b_next!9465))))

(declare-fun tp!33923 () Bool)

(declare-fun b_and!16869 () Bool)

(assert (=> start!39206 (= tp!33923 b_and!16869)))

(declare-fun b!412914 () Bool)

(declare-fun res!239962 () Bool)

(declare-fun e!246984 () Bool)

(assert (=> b!412914 (=> (not res!239962) (not e!246984))))

(declare-datatypes ((array!25073 0))(
  ( (array!25074 (arr!11983 (Array (_ BitVec 32) (_ BitVec 64))) (size!12335 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25073)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25073 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!412914 (= res!239962 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!412915 () Bool)

(declare-fun res!239971 () Bool)

(assert (=> b!412915 (=> (not res!239971) (not e!246984))))

(declare-datatypes ((List!6935 0))(
  ( (Nil!6932) (Cons!6931 (h!7787 (_ BitVec 64)) (t!12117 List!6935)) )
))
(declare-fun arrayNoDuplicates!0 (array!25073 (_ BitVec 32) List!6935) Bool)

(assert (=> b!412915 (= res!239971 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6932))))

(declare-fun mapNonEmpty!17547 () Bool)

(declare-fun mapRes!17547 () Bool)

(declare-fun tp!33924 () Bool)

(declare-fun e!246981 () Bool)

(assert (=> mapNonEmpty!17547 (= mapRes!17547 (and tp!33924 e!246981))))

(declare-datatypes ((V!15261 0))(
  ( (V!15262 (val!5353 Int)) )
))
(declare-datatypes ((ValueCell!4965 0))(
  ( (ValueCellFull!4965 (v!7596 V!15261)) (EmptyCell!4965) )
))
(declare-datatypes ((array!25075 0))(
  ( (array!25076 (arr!11984 (Array (_ BitVec 32) ValueCell!4965)) (size!12336 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25075)

(declare-fun mapRest!17547 () (Array (_ BitVec 32) ValueCell!4965))

(declare-fun mapKey!17547 () (_ BitVec 32))

(declare-fun mapValue!17547 () ValueCell!4965)

(assert (=> mapNonEmpty!17547 (= (arr!11984 _values!549) (store mapRest!17547 mapKey!17547 mapValue!17547))))

(declare-fun b!412916 () Bool)

(declare-fun res!239970 () Bool)

(assert (=> b!412916 (=> (not res!239970) (not e!246984))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!412916 (= res!239970 (or (= (select (arr!11983 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11983 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!412917 () Bool)

(declare-fun res!239965 () Bool)

(assert (=> b!412917 (=> (not res!239965) (not e!246984))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!412917 (= res!239965 (validKeyInArray!0 k0!794))))

(declare-fun b!412918 () Bool)

(declare-fun res!239964 () Bool)

(declare-fun e!246985 () Bool)

(assert (=> b!412918 (=> (not res!239964) (not e!246985))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!412918 (= res!239964 (bvsle from!863 i!563))))

(declare-fun b!412919 () Bool)

(declare-fun res!239968 () Bool)

(assert (=> b!412919 (=> (not res!239968) (not e!246985))))

(declare-fun lt!189600 () array!25073)

(assert (=> b!412919 (= res!239968 (arrayNoDuplicates!0 lt!189600 #b00000000000000000000000000000000 Nil!6932))))

(declare-fun b!412920 () Bool)

(declare-fun e!246980 () Bool)

(declare-fun e!246982 () Bool)

(assert (=> b!412920 (= e!246980 (and e!246982 mapRes!17547))))

(declare-fun condMapEmpty!17547 () Bool)

(declare-fun mapDefault!17547 () ValueCell!4965)

(assert (=> b!412920 (= condMapEmpty!17547 (= (arr!11984 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4965)) mapDefault!17547)))))

(declare-fun minValue!515 () V!15261)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15261)

(declare-fun lt!189597 () array!25075)

(declare-datatypes ((tuple2!6874 0))(
  ( (tuple2!6875 (_1!3447 (_ BitVec 64)) (_2!3447 V!15261)) )
))
(declare-datatypes ((List!6936 0))(
  ( (Nil!6933) (Cons!6932 (h!7788 tuple2!6874) (t!12118 List!6936)) )
))
(declare-datatypes ((ListLongMap!5801 0))(
  ( (ListLongMap!5802 (toList!2916 List!6936)) )
))
(declare-fun call!28571 () ListLongMap!5801)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun bm!28567 () Bool)

(declare-fun c!54836 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1126 (array!25073 array!25075 (_ BitVec 32) (_ BitVec 32) V!15261 V!15261 (_ BitVec 32) Int) ListLongMap!5801)

(assert (=> bm!28567 (= call!28571 (getCurrentListMapNoExtraKeys!1126 (ite c!54836 lt!189600 _keys!709) (ite c!54836 lt!189597 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!412921 () Bool)

(declare-fun res!239969 () Bool)

(assert (=> b!412921 (=> (not res!239969) (not e!246984))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25073 (_ BitVec 32)) Bool)

(assert (=> b!412921 (= res!239969 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!239967 () Bool)

(assert (=> start!39206 (=> (not res!239967) (not e!246984))))

(assert (=> start!39206 (= res!239967 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12335 _keys!709))))))

(assert (=> start!39206 e!246984))

(declare-fun tp_is_empty!10617 () Bool)

(assert (=> start!39206 tp_is_empty!10617))

(assert (=> start!39206 tp!33923))

(assert (=> start!39206 true))

(declare-fun array_inv!8738 (array!25075) Bool)

(assert (=> start!39206 (and (array_inv!8738 _values!549) e!246980)))

(declare-fun array_inv!8739 (array!25073) Bool)

(assert (=> start!39206 (array_inv!8739 _keys!709)))

(declare-fun b!412922 () Bool)

(declare-fun res!239961 () Bool)

(assert (=> b!412922 (=> (not res!239961) (not e!246984))))

(assert (=> b!412922 (= res!239961 (and (= (size!12336 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12335 _keys!709) (size!12336 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!412923 () Bool)

(declare-fun res!239972 () Bool)

(assert (=> b!412923 (=> (not res!239972) (not e!246984))))

(assert (=> b!412923 (= res!239972 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12335 _keys!709))))))

(declare-fun b!412924 () Bool)

(declare-fun e!246979 () Bool)

(assert (=> b!412924 (= e!246985 e!246979)))

(declare-fun res!239973 () Bool)

(assert (=> b!412924 (=> (not res!239973) (not e!246979))))

(assert (=> b!412924 (= res!239973 (= from!863 i!563))))

(declare-fun lt!189599 () ListLongMap!5801)

(assert (=> b!412924 (= lt!189599 (getCurrentListMapNoExtraKeys!1126 lt!189600 lt!189597 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!15261)

(assert (=> b!412924 (= lt!189597 (array!25076 (store (arr!11984 _values!549) i!563 (ValueCellFull!4965 v!412)) (size!12336 _values!549)))))

(declare-fun lt!189598 () ListLongMap!5801)

(assert (=> b!412924 (= lt!189598 (getCurrentListMapNoExtraKeys!1126 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun call!28570 () ListLongMap!5801)

(declare-fun bm!28568 () Bool)

(assert (=> bm!28568 (= call!28570 (getCurrentListMapNoExtraKeys!1126 (ite c!54836 _keys!709 lt!189600) (ite c!54836 _values!549 lt!189597) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!412925 () Bool)

(declare-fun res!239966 () Bool)

(assert (=> b!412925 (=> (not res!239966) (not e!246984))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!412925 (= res!239966 (validMask!0 mask!1025))))

(declare-fun b!412926 () Bool)

(assert (=> b!412926 (= e!246982 tp_is_empty!10617)))

(declare-fun b!412927 () Bool)

(assert (=> b!412927 (= e!246979 (not true))))

(declare-fun e!246978 () Bool)

(assert (=> b!412927 e!246978))

(assert (=> b!412927 (= c!54836 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12175 0))(
  ( (Unit!12176) )
))
(declare-fun lt!189596 () Unit!12175)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!350 (array!25073 array!25075 (_ BitVec 32) (_ BitVec 32) V!15261 V!15261 (_ BitVec 32) (_ BitVec 64) V!15261 (_ BitVec 32) Int) Unit!12175)

(assert (=> b!412927 (= lt!189596 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!350 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!17547 () Bool)

(assert (=> mapIsEmpty!17547 mapRes!17547))

(declare-fun b!412928 () Bool)

(assert (=> b!412928 (= e!246981 tp_is_empty!10617)))

(declare-fun b!412929 () Bool)

(assert (=> b!412929 (= e!246978 (= call!28570 call!28571))))

(declare-fun b!412930 () Bool)

(declare-fun +!1139 (ListLongMap!5801 tuple2!6874) ListLongMap!5801)

(assert (=> b!412930 (= e!246978 (= call!28571 (+!1139 call!28570 (tuple2!6875 k0!794 v!412))))))

(declare-fun b!412931 () Bool)

(assert (=> b!412931 (= e!246984 e!246985)))

(declare-fun res!239963 () Bool)

(assert (=> b!412931 (=> (not res!239963) (not e!246985))))

(assert (=> b!412931 (= res!239963 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189600 mask!1025))))

(assert (=> b!412931 (= lt!189600 (array!25074 (store (arr!11983 _keys!709) i!563 k0!794) (size!12335 _keys!709)))))

(assert (= (and start!39206 res!239967) b!412925))

(assert (= (and b!412925 res!239966) b!412922))

(assert (= (and b!412922 res!239961) b!412921))

(assert (= (and b!412921 res!239969) b!412915))

(assert (= (and b!412915 res!239971) b!412923))

(assert (= (and b!412923 res!239972) b!412917))

(assert (= (and b!412917 res!239965) b!412916))

(assert (= (and b!412916 res!239970) b!412914))

(assert (= (and b!412914 res!239962) b!412931))

(assert (= (and b!412931 res!239963) b!412919))

(assert (= (and b!412919 res!239968) b!412918))

(assert (= (and b!412918 res!239964) b!412924))

(assert (= (and b!412924 res!239973) b!412927))

(assert (= (and b!412927 c!54836) b!412930))

(assert (= (and b!412927 (not c!54836)) b!412929))

(assert (= (or b!412930 b!412929) bm!28567))

(assert (= (or b!412930 b!412929) bm!28568))

(assert (= (and b!412920 condMapEmpty!17547) mapIsEmpty!17547))

(assert (= (and b!412920 (not condMapEmpty!17547)) mapNonEmpty!17547))

(get-info :version)

(assert (= (and mapNonEmpty!17547 ((_ is ValueCellFull!4965) mapValue!17547)) b!412928))

(assert (= (and b!412920 ((_ is ValueCellFull!4965) mapDefault!17547)) b!412926))

(assert (= start!39206 b!412920))

(declare-fun m!402551 () Bool)

(assert (=> b!412915 m!402551))

(declare-fun m!402553 () Bool)

(assert (=> b!412917 m!402553))

(declare-fun m!402555 () Bool)

(assert (=> b!412924 m!402555))

(declare-fun m!402557 () Bool)

(assert (=> b!412924 m!402557))

(declare-fun m!402559 () Bool)

(assert (=> b!412924 m!402559))

(declare-fun m!402561 () Bool)

(assert (=> b!412921 m!402561))

(declare-fun m!402563 () Bool)

(assert (=> bm!28568 m!402563))

(declare-fun m!402565 () Bool)

(assert (=> start!39206 m!402565))

(declare-fun m!402567 () Bool)

(assert (=> start!39206 m!402567))

(declare-fun m!402569 () Bool)

(assert (=> b!412914 m!402569))

(declare-fun m!402571 () Bool)

(assert (=> mapNonEmpty!17547 m!402571))

(declare-fun m!402573 () Bool)

(assert (=> b!412931 m!402573))

(declare-fun m!402575 () Bool)

(assert (=> b!412931 m!402575))

(declare-fun m!402577 () Bool)

(assert (=> b!412927 m!402577))

(declare-fun m!402579 () Bool)

(assert (=> b!412916 m!402579))

(declare-fun m!402581 () Bool)

(assert (=> b!412925 m!402581))

(declare-fun m!402583 () Bool)

(assert (=> b!412930 m!402583))

(declare-fun m!402585 () Bool)

(assert (=> b!412919 m!402585))

(declare-fun m!402587 () Bool)

(assert (=> bm!28567 m!402587))

(check-sat (not start!39206) (not b!412931) (not b!412925) (not bm!28568) (not b!412914) (not b!412927) (not b!412924) (not b!412917) (not b!412921) (not mapNonEmpty!17547) (not bm!28567) (not b!412930) (not b_next!9465) (not b!412915) b_and!16869 tp_is_empty!10617 (not b!412919))
(check-sat b_and!16869 (not b_next!9465))
