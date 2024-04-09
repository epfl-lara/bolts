; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39202 () Bool)

(assert start!39202)

(declare-fun b_free!9461 () Bool)

(declare-fun b_next!9461 () Bool)

(assert (=> start!39202 (= b_free!9461 (not b_next!9461))))

(declare-fun tp!33911 () Bool)

(declare-fun b_and!16865 () Bool)

(assert (=> start!39202 (= tp!33911 b_and!16865)))

(declare-fun b!412806 () Bool)

(declare-fun res!239888 () Bool)

(declare-fun e!246931 () Bool)

(assert (=> b!412806 (=> (not res!239888) (not e!246931))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!25065 0))(
  ( (array!25066 (arr!11979 (Array (_ BitVec 32) (_ BitVec 64))) (size!12331 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25065)

(assert (=> b!412806 (= res!239888 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12331 _keys!709))))))

(declare-fun b!412807 () Bool)

(declare-fun e!246935 () Bool)

(declare-fun e!246930 () Bool)

(assert (=> b!412807 (= e!246935 e!246930)))

(declare-fun res!239889 () Bool)

(assert (=> b!412807 (=> (not res!239889) (not e!246930))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!412807 (= res!239889 (= from!863 i!563))))

(declare-datatypes ((V!15255 0))(
  ( (V!15256 (val!5351 Int)) )
))
(declare-fun minValue!515 () V!15255)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15255)

(declare-datatypes ((tuple2!6870 0))(
  ( (tuple2!6871 (_1!3445 (_ BitVec 64)) (_2!3445 V!15255)) )
))
(declare-datatypes ((List!6932 0))(
  ( (Nil!6929) (Cons!6928 (h!7784 tuple2!6870) (t!12114 List!6932)) )
))
(declare-datatypes ((ListLongMap!5797 0))(
  ( (ListLongMap!5798 (toList!2914 List!6932)) )
))
(declare-fun lt!189566 () ListLongMap!5797)

(declare-fun lt!189568 () array!25065)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4963 0))(
  ( (ValueCellFull!4963 (v!7594 V!15255)) (EmptyCell!4963) )
))
(declare-datatypes ((array!25067 0))(
  ( (array!25068 (arr!11980 (Array (_ BitVec 32) ValueCell!4963)) (size!12332 (_ BitVec 32))) )
))
(declare-fun lt!189569 () array!25067)

(declare-fun getCurrentListMapNoExtraKeys!1124 (array!25065 array!25067 (_ BitVec 32) (_ BitVec 32) V!15255 V!15255 (_ BitVec 32) Int) ListLongMap!5797)

(assert (=> b!412807 (= lt!189566 (getCurrentListMapNoExtraKeys!1124 lt!189568 lt!189569 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!25067)

(declare-fun v!412 () V!15255)

(assert (=> b!412807 (= lt!189569 (array!25068 (store (arr!11980 _values!549) i!563 (ValueCellFull!4963 v!412)) (size!12332 _values!549)))))

(declare-fun lt!189567 () ListLongMap!5797)

(assert (=> b!412807 (= lt!189567 (getCurrentListMapNoExtraKeys!1124 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapIsEmpty!17541 () Bool)

(declare-fun mapRes!17541 () Bool)

(assert (=> mapIsEmpty!17541 mapRes!17541))

(declare-fun b!412808 () Bool)

(declare-fun res!239885 () Bool)

(assert (=> b!412808 (=> (not res!239885) (not e!246931))))

(assert (=> b!412808 (= res!239885 (and (= (size!12332 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12331 _keys!709) (size!12332 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun res!239892 () Bool)

(assert (=> start!39202 (=> (not res!239892) (not e!246931))))

(assert (=> start!39202 (= res!239892 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12331 _keys!709))))))

(assert (=> start!39202 e!246931))

(declare-fun tp_is_empty!10613 () Bool)

(assert (=> start!39202 tp_is_empty!10613))

(assert (=> start!39202 tp!33911))

(assert (=> start!39202 true))

(declare-fun e!246936 () Bool)

(declare-fun array_inv!8734 (array!25067) Bool)

(assert (=> start!39202 (and (array_inv!8734 _values!549) e!246936)))

(declare-fun array_inv!8735 (array!25065) Bool)

(assert (=> start!39202 (array_inv!8735 _keys!709)))

(declare-fun b!412809 () Bool)

(declare-fun res!239893 () Bool)

(assert (=> b!412809 (=> (not res!239893) (not e!246931))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25065 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!412809 (= res!239893 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!412810 () Bool)

(assert (=> b!412810 (= e!246930 (not true))))

(declare-fun e!246932 () Bool)

(assert (=> b!412810 e!246932))

(declare-fun c!54830 () Bool)

(assert (=> b!412810 (= c!54830 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12173 0))(
  ( (Unit!12174) )
))
(declare-fun lt!189570 () Unit!12173)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!349 (array!25065 array!25067 (_ BitVec 32) (_ BitVec 32) V!15255 V!15255 (_ BitVec 32) (_ BitVec 64) V!15255 (_ BitVec 32) Int) Unit!12173)

(assert (=> b!412810 (= lt!189570 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!349 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!412811 () Bool)

(declare-fun e!246934 () Bool)

(assert (=> b!412811 (= e!246934 tp_is_empty!10613)))

(declare-fun bm!28555 () Bool)

(declare-fun call!28558 () ListLongMap!5797)

(assert (=> bm!28555 (= call!28558 (getCurrentListMapNoExtraKeys!1124 (ite c!54830 lt!189568 _keys!709) (ite c!54830 lt!189569 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun call!28559 () ListLongMap!5797)

(declare-fun bm!28556 () Bool)

(assert (=> bm!28556 (= call!28559 (getCurrentListMapNoExtraKeys!1124 (ite c!54830 _keys!709 lt!189568) (ite c!54830 _values!549 lt!189569) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!412812 () Bool)

(declare-fun res!239883 () Bool)

(assert (=> b!412812 (=> (not res!239883) (not e!246931))))

(assert (=> b!412812 (= res!239883 (or (= (select (arr!11979 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11979 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!412813 () Bool)

(assert (=> b!412813 (= e!246932 (= call!28559 call!28558))))

(declare-fun b!412814 () Bool)

(declare-fun res!239890 () Bool)

(assert (=> b!412814 (=> (not res!239890) (not e!246931))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25065 (_ BitVec 32)) Bool)

(assert (=> b!412814 (= res!239890 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!412815 () Bool)

(declare-fun res!239891 () Bool)

(assert (=> b!412815 (=> (not res!239891) (not e!246931))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!412815 (= res!239891 (validMask!0 mask!1025))))

(declare-fun b!412816 () Bool)

(declare-fun +!1137 (ListLongMap!5797 tuple2!6870) ListLongMap!5797)

(assert (=> b!412816 (= e!246932 (= call!28558 (+!1137 call!28559 (tuple2!6871 k!794 v!412))))))

(declare-fun b!412817 () Bool)

(assert (=> b!412817 (= e!246931 e!246935)))

(declare-fun res!239887 () Bool)

(assert (=> b!412817 (=> (not res!239887) (not e!246935))))

(assert (=> b!412817 (= res!239887 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189568 mask!1025))))

(assert (=> b!412817 (= lt!189568 (array!25066 (store (arr!11979 _keys!709) i!563 k!794) (size!12331 _keys!709)))))

(declare-fun b!412818 () Bool)

(declare-fun res!239886 () Bool)

(assert (=> b!412818 (=> (not res!239886) (not e!246935))))

(declare-datatypes ((List!6933 0))(
  ( (Nil!6930) (Cons!6929 (h!7785 (_ BitVec 64)) (t!12115 List!6933)) )
))
(declare-fun arrayNoDuplicates!0 (array!25065 (_ BitVec 32) List!6933) Bool)

(assert (=> b!412818 (= res!239886 (arrayNoDuplicates!0 lt!189568 #b00000000000000000000000000000000 Nil!6930))))

(declare-fun b!412819 () Bool)

(declare-fun res!239895 () Bool)

(assert (=> b!412819 (=> (not res!239895) (not e!246935))))

(assert (=> b!412819 (= res!239895 (bvsle from!863 i!563))))

(declare-fun b!412820 () Bool)

(declare-fun e!246933 () Bool)

(assert (=> b!412820 (= e!246933 tp_is_empty!10613)))

(declare-fun b!412821 () Bool)

(declare-fun res!239894 () Bool)

(assert (=> b!412821 (=> (not res!239894) (not e!246931))))

(assert (=> b!412821 (= res!239894 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6930))))

(declare-fun b!412822 () Bool)

(declare-fun res!239884 () Bool)

(assert (=> b!412822 (=> (not res!239884) (not e!246931))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!412822 (= res!239884 (validKeyInArray!0 k!794))))

(declare-fun mapNonEmpty!17541 () Bool)

(declare-fun tp!33912 () Bool)

(assert (=> mapNonEmpty!17541 (= mapRes!17541 (and tp!33912 e!246934))))

(declare-fun mapKey!17541 () (_ BitVec 32))

(declare-fun mapRest!17541 () (Array (_ BitVec 32) ValueCell!4963))

(declare-fun mapValue!17541 () ValueCell!4963)

(assert (=> mapNonEmpty!17541 (= (arr!11980 _values!549) (store mapRest!17541 mapKey!17541 mapValue!17541))))

(declare-fun b!412823 () Bool)

(assert (=> b!412823 (= e!246936 (and e!246933 mapRes!17541))))

(declare-fun condMapEmpty!17541 () Bool)

(declare-fun mapDefault!17541 () ValueCell!4963)

