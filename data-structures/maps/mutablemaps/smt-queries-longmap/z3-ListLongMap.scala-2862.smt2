; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41238 () Bool)

(assert start!41238)

(declare-fun b_free!11073 () Bool)

(declare-fun b_next!11073 () Bool)

(assert (=> start!41238 (= b_free!11073 (not b_next!11073))))

(declare-fun tp!39057 () Bool)

(declare-fun b_and!19411 () Bool)

(assert (=> start!41238 (= tp!39057 b_and!19411)))

(declare-fun b!460950 () Bool)

(declare-fun res!275736 () Bool)

(declare-fun e!268875 () Bool)

(assert (=> b!460950 (=> (not res!275736) (not e!268875))))

(declare-datatypes ((array!28585 0))(
  ( (array!28586 (arr!13729 (Array (_ BitVec 32) (_ BitVec 64))) (size!14081 (_ BitVec 32))) )
))
(declare-fun lt!208860 () array!28585)

(declare-datatypes ((List!8318 0))(
  ( (Nil!8315) (Cons!8314 (h!9170 (_ BitVec 64)) (t!14268 List!8318)) )
))
(declare-fun arrayNoDuplicates!0 (array!28585 (_ BitVec 32) List!8318) Bool)

(assert (=> b!460950 (= res!275736 (arrayNoDuplicates!0 lt!208860 #b00000000000000000000000000000000 Nil!8315))))

(declare-fun b!460951 () Bool)

(declare-fun res!275742 () Bool)

(declare-fun e!268881 () Bool)

(assert (=> b!460951 (=> (not res!275742) (not e!268881))))

(declare-fun i!563 () (_ BitVec 32))

(declare-fun _keys!709 () array!28585)

(assert (=> b!460951 (= res!275742 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14081 _keys!709))))))

(declare-fun b!460952 () Bool)

(declare-fun res!275733 () Bool)

(assert (=> b!460952 (=> (not res!275733) (not e!268875))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!460952 (= res!275733 (bvsle from!863 i!563))))

(declare-fun b!460953 () Bool)

(declare-fun res!275741 () Bool)

(assert (=> b!460953 (=> (not res!275741) (not e!268881))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!28585 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!460953 (= res!275741 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!460954 () Bool)

(declare-fun e!268874 () Bool)

(declare-fun tp_is_empty!12411 () Bool)

(assert (=> b!460954 (= e!268874 tp_is_empty!12411)))

(declare-fun b!460956 () Bool)

(declare-fun res!275735 () Bool)

(assert (=> b!460956 (=> (not res!275735) (not e!268881))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!17653 0))(
  ( (V!17654 (val!6250 Int)) )
))
(declare-datatypes ((ValueCell!5862 0))(
  ( (ValueCellFull!5862 (v!8528 V!17653)) (EmptyCell!5862) )
))
(declare-datatypes ((array!28587 0))(
  ( (array!28588 (arr!13730 (Array (_ BitVec 32) ValueCell!5862)) (size!14082 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28587)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!460956 (= res!275735 (and (= (size!14082 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!14081 _keys!709) (size!14082 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!460957 () Bool)

(declare-fun e!268880 () Bool)

(declare-fun e!268876 () Bool)

(declare-fun mapRes!20269 () Bool)

(assert (=> b!460957 (= e!268880 (and e!268876 mapRes!20269))))

(declare-fun condMapEmpty!20269 () Bool)

(declare-fun mapDefault!20269 () ValueCell!5862)

(assert (=> b!460957 (= condMapEmpty!20269 (= (arr!13730 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5862)) mapDefault!20269)))))

(declare-fun b!460958 () Bool)

(assert (=> b!460958 (= e!268881 e!268875)))

(declare-fun res!275734 () Bool)

(assert (=> b!460958 (=> (not res!275734) (not e!268875))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28585 (_ BitVec 32)) Bool)

(assert (=> b!460958 (= res!275734 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!208860 mask!1025))))

(assert (=> b!460958 (= lt!208860 (array!28586 (store (arr!13729 _keys!709) i!563 k0!794) (size!14081 _keys!709)))))

(declare-fun b!460959 () Bool)

(declare-fun e!268878 () Bool)

(assert (=> b!460959 (= e!268878 (bvslt i!563 (size!14082 _values!549)))))

(declare-fun b!460960 () Bool)

(declare-fun res!275739 () Bool)

(assert (=> b!460960 (=> (not res!275739) (not e!268881))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!460960 (= res!275739 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!20269 () Bool)

(assert (=> mapIsEmpty!20269 mapRes!20269))

(declare-fun mapNonEmpty!20269 () Bool)

(declare-fun tp!39058 () Bool)

(assert (=> mapNonEmpty!20269 (= mapRes!20269 (and tp!39058 e!268874))))

(declare-fun mapKey!20269 () (_ BitVec 32))

(declare-fun mapValue!20269 () ValueCell!5862)

(declare-fun mapRest!20269 () (Array (_ BitVec 32) ValueCell!5862))

(assert (=> mapNonEmpty!20269 (= (arr!13730 _values!549) (store mapRest!20269 mapKey!20269 mapValue!20269))))

(declare-fun b!460961 () Bool)

(declare-fun res!275737 () Bool)

(assert (=> b!460961 (=> (not res!275737) (not e!268881))))

(assert (=> b!460961 (= res!275737 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!460962 () Bool)

(declare-fun e!268877 () Bool)

(assert (=> b!460962 (= e!268875 e!268877)))

(declare-fun res!275732 () Bool)

(assert (=> b!460962 (=> (not res!275732) (not e!268877))))

(assert (=> b!460962 (= res!275732 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!8216 0))(
  ( (tuple2!8217 (_1!4118 (_ BitVec 64)) (_2!4118 V!17653)) )
))
(declare-datatypes ((List!8319 0))(
  ( (Nil!8316) (Cons!8315 (h!9171 tuple2!8216) (t!14269 List!8319)) )
))
(declare-datatypes ((ListLongMap!7143 0))(
  ( (ListLongMap!7144 (toList!3587 List!8319)) )
))
(declare-fun lt!208862 () ListLongMap!7143)

(declare-fun zeroValue!515 () V!17653)

(declare-fun lt!208861 () array!28587)

(declare-fun minValue!515 () V!17653)

(declare-fun getCurrentListMapNoExtraKeys!1755 (array!28585 array!28587 (_ BitVec 32) (_ BitVec 32) V!17653 V!17653 (_ BitVec 32) Int) ListLongMap!7143)

(assert (=> b!460962 (= lt!208862 (getCurrentListMapNoExtraKeys!1755 lt!208860 lt!208861 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!17653)

(assert (=> b!460962 (= lt!208861 (array!28588 (store (arr!13730 _values!549) i!563 (ValueCellFull!5862 v!412)) (size!14082 _values!549)))))

(declare-fun lt!208864 () ListLongMap!7143)

(assert (=> b!460962 (= lt!208864 (getCurrentListMapNoExtraKeys!1755 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!460963 () Bool)

(declare-fun res!275743 () Bool)

(assert (=> b!460963 (=> (not res!275743) (not e!268881))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!460963 (= res!275743 (validKeyInArray!0 k0!794))))

(declare-fun b!460964 () Bool)

(declare-fun res!275740 () Bool)

(assert (=> b!460964 (=> (not res!275740) (not e!268881))))

(assert (=> b!460964 (= res!275740 (or (= (select (arr!13729 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13729 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!460965 () Bool)

(declare-fun res!275744 () Bool)

(assert (=> b!460965 (=> (not res!275744) (not e!268881))))

(assert (=> b!460965 (= res!275744 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8315))))

(declare-fun b!460966 () Bool)

(assert (=> b!460966 (= e!268877 (not e!268878))))

(declare-fun res!275731 () Bool)

(assert (=> b!460966 (=> res!275731 e!268878)))

(assert (=> b!460966 (= res!275731 (validKeyInArray!0 (select (arr!13729 _keys!709) from!863)))))

(declare-fun +!1605 (ListLongMap!7143 tuple2!8216) ListLongMap!7143)

(assert (=> b!460966 (= (getCurrentListMapNoExtraKeys!1755 lt!208860 lt!208861 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1605 (getCurrentListMapNoExtraKeys!1755 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!8217 k0!794 v!412)))))

(declare-datatypes ((Unit!13373 0))(
  ( (Unit!13374) )
))
(declare-fun lt!208863 () Unit!13373)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!757 (array!28585 array!28587 (_ BitVec 32) (_ BitVec 32) V!17653 V!17653 (_ BitVec 32) (_ BitVec 64) V!17653 (_ BitVec 32) Int) Unit!13373)

(assert (=> b!460966 (= lt!208863 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!757 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!275738 () Bool)

(assert (=> start!41238 (=> (not res!275738) (not e!268881))))

(assert (=> start!41238 (= res!275738 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!14081 _keys!709))))))

(assert (=> start!41238 e!268881))

(assert (=> start!41238 tp_is_empty!12411))

(assert (=> start!41238 tp!39057))

(assert (=> start!41238 true))

(declare-fun array_inv!9918 (array!28587) Bool)

(assert (=> start!41238 (and (array_inv!9918 _values!549) e!268880)))

(declare-fun array_inv!9919 (array!28585) Bool)

(assert (=> start!41238 (array_inv!9919 _keys!709)))

(declare-fun b!460955 () Bool)

(assert (=> b!460955 (= e!268876 tp_is_empty!12411)))

(assert (= (and start!41238 res!275738) b!460960))

(assert (= (and b!460960 res!275739) b!460956))

(assert (= (and b!460956 res!275735) b!460961))

(assert (= (and b!460961 res!275737) b!460965))

(assert (= (and b!460965 res!275744) b!460951))

(assert (= (and b!460951 res!275742) b!460963))

(assert (= (and b!460963 res!275743) b!460964))

(assert (= (and b!460964 res!275740) b!460953))

(assert (= (and b!460953 res!275741) b!460958))

(assert (= (and b!460958 res!275734) b!460950))

(assert (= (and b!460950 res!275736) b!460952))

(assert (= (and b!460952 res!275733) b!460962))

(assert (= (and b!460962 res!275732) b!460966))

(assert (= (and b!460966 (not res!275731)) b!460959))

(assert (= (and b!460957 condMapEmpty!20269) mapIsEmpty!20269))

(assert (= (and b!460957 (not condMapEmpty!20269)) mapNonEmpty!20269))

(get-info :version)

(assert (= (and mapNonEmpty!20269 ((_ is ValueCellFull!5862) mapValue!20269)) b!460954))

(assert (= (and b!460957 ((_ is ValueCellFull!5862) mapDefault!20269)) b!460955))

(assert (= start!41238 b!460957))

(declare-fun m!444197 () Bool)

(assert (=> b!460963 m!444197))

(declare-fun m!444199 () Bool)

(assert (=> mapNonEmpty!20269 m!444199))

(declare-fun m!444201 () Bool)

(assert (=> b!460960 m!444201))

(declare-fun m!444203 () Bool)

(assert (=> b!460966 m!444203))

(declare-fun m!444205 () Bool)

(assert (=> b!460966 m!444205))

(declare-fun m!444207 () Bool)

(assert (=> b!460966 m!444207))

(assert (=> b!460966 m!444207))

(declare-fun m!444209 () Bool)

(assert (=> b!460966 m!444209))

(assert (=> b!460966 m!444203))

(declare-fun m!444211 () Bool)

(assert (=> b!460966 m!444211))

(declare-fun m!444213 () Bool)

(assert (=> b!460966 m!444213))

(declare-fun m!444215 () Bool)

(assert (=> b!460965 m!444215))

(declare-fun m!444217 () Bool)

(assert (=> b!460950 m!444217))

(declare-fun m!444219 () Bool)

(assert (=> b!460958 m!444219))

(declare-fun m!444221 () Bool)

(assert (=> b!460958 m!444221))

(declare-fun m!444223 () Bool)

(assert (=> b!460953 m!444223))

(declare-fun m!444225 () Bool)

(assert (=> b!460962 m!444225))

(declare-fun m!444227 () Bool)

(assert (=> b!460962 m!444227))

(declare-fun m!444229 () Bool)

(assert (=> b!460962 m!444229))

(declare-fun m!444231 () Bool)

(assert (=> b!460961 m!444231))

(declare-fun m!444233 () Bool)

(assert (=> b!460964 m!444233))

(declare-fun m!444235 () Bool)

(assert (=> start!41238 m!444235))

(declare-fun m!444237 () Bool)

(assert (=> start!41238 m!444237))

(check-sat (not start!41238) b_and!19411 (not b!460963) (not b!460961) (not b!460953) (not b!460960) (not b!460962) tp_is_empty!12411 (not mapNonEmpty!20269) (not b!460966) (not b!460965) (not b!460950) (not b_next!11073) (not b!460958))
(check-sat b_and!19411 (not b_next!11073))
