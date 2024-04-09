; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40704 () Bool)

(assert start!40704)

(declare-fun b_free!10707 () Bool)

(declare-fun b_next!10707 () Bool)

(assert (=> start!40704 (= b_free!10707 (not b_next!10707))))

(declare-fun tp!37941 () Bool)

(declare-fun b_and!18733 () Bool)

(assert (=> start!40704 (= tp!37941 b_and!18733)))

(declare-fun mapNonEmpty!19701 () Bool)

(declare-fun mapRes!19701 () Bool)

(declare-fun tp!37940 () Bool)

(declare-fun e!263703 () Bool)

(assert (=> mapNonEmpty!19701 (= mapRes!19701 (and tp!37940 e!263703))))

(declare-datatypes ((V!17165 0))(
  ( (V!17166 (val!6067 Int)) )
))
(declare-datatypes ((ValueCell!5679 0))(
  ( (ValueCellFull!5679 (v!8318 V!17165)) (EmptyCell!5679) )
))
(declare-datatypes ((array!27857 0))(
  ( (array!27858 (arr!13371 (Array (_ BitVec 32) ValueCell!5679)) (size!13723 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27857)

(declare-fun mapRest!19701 () (Array (_ BitVec 32) ValueCell!5679))

(declare-fun mapValue!19701 () ValueCell!5679)

(declare-fun mapKey!19701 () (_ BitVec 32))

(assert (=> mapNonEmpty!19701 (= (arr!13371 _values!549) (store mapRest!19701 mapKey!19701 mapValue!19701))))

(declare-fun b!449924 () Bool)

(declare-fun res!267814 () Bool)

(declare-fun e!263708 () Bool)

(assert (=> b!449924 (=> (not res!267814) (not e!263708))))

(declare-datatypes ((array!27859 0))(
  ( (array!27860 (arr!13372 (Array (_ BitVec 32) (_ BitVec 64))) (size!13724 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27859)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27859 (_ BitVec 32)) Bool)

(assert (=> b!449924 (= res!267814 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!449925 () Bool)

(declare-fun res!267816 () Bool)

(assert (=> b!449925 (=> (not res!267816) (not e!263708))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!449925 (= res!267816 (and (= (size!13723 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13724 _keys!709) (size!13723 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!449926 () Bool)

(declare-fun res!267817 () Bool)

(assert (=> b!449926 (=> (not res!267817) (not e!263708))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!449926 (= res!267817 (or (= (select (arr!13372 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13372 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!267820 () Bool)

(assert (=> start!40704 (=> (not res!267820) (not e!263708))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40704 (= res!267820 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13724 _keys!709))))))

(assert (=> start!40704 e!263708))

(declare-fun tp_is_empty!12045 () Bool)

(assert (=> start!40704 tp_is_empty!12045))

(assert (=> start!40704 tp!37941))

(assert (=> start!40704 true))

(declare-fun e!263707 () Bool)

(declare-fun array_inv!9680 (array!27857) Bool)

(assert (=> start!40704 (and (array_inv!9680 _values!549) e!263707)))

(declare-fun array_inv!9681 (array!27859) Bool)

(assert (=> start!40704 (array_inv!9681 _keys!709)))

(declare-fun b!449927 () Bool)

(declare-fun e!263704 () Bool)

(assert (=> b!449927 (= e!263704 tp_is_empty!12045)))

(declare-fun b!449928 () Bool)

(assert (=> b!449928 (= e!263703 tp_is_empty!12045)))

(declare-fun b!449929 () Bool)

(declare-fun e!263709 () Bool)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun v!412 () V!17165)

(declare-datatypes ((tuple2!7908 0))(
  ( (tuple2!7909 (_1!3964 (_ BitVec 64)) (_2!3964 V!17165)) )
))
(declare-datatypes ((List!8018 0))(
  ( (Nil!8015) (Cons!8014 (h!8870 tuple2!7908) (t!13788 List!8018)) )
))
(declare-datatypes ((ListLongMap!6835 0))(
  ( (ListLongMap!6836 (toList!3433 List!8018)) )
))
(declare-fun call!29711 () ListLongMap!6835)

(declare-fun call!29710 () ListLongMap!6835)

(declare-fun +!1506 (ListLongMap!6835 tuple2!7908) ListLongMap!6835)

(assert (=> b!449929 (= e!263709 (= call!29710 (+!1506 call!29711 (tuple2!7909 k0!794 v!412))))))

(declare-fun mapIsEmpty!19701 () Bool)

(assert (=> mapIsEmpty!19701 mapRes!19701))

(declare-fun b!449930 () Bool)

(declare-fun res!267819 () Bool)

(assert (=> b!449930 (=> (not res!267819) (not e!263708))))

(assert (=> b!449930 (= res!267819 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13724 _keys!709))))))

(declare-fun b!449931 () Bool)

(declare-fun res!267815 () Bool)

(assert (=> b!449931 (=> (not res!267815) (not e!263708))))

(declare-fun arrayContainsKey!0 (array!27859 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!449931 (= res!267815 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!449932 () Bool)

(declare-fun e!263702 () Bool)

(declare-fun e!263705 () Bool)

(assert (=> b!449932 (= e!263702 e!263705)))

(declare-fun res!267818 () Bool)

(assert (=> b!449932 (=> (not res!267818) (not e!263705))))

(assert (=> b!449932 (= res!267818 (= from!863 i!563))))

(declare-fun minValue!515 () V!17165)

(declare-fun zeroValue!515 () V!17165)

(declare-fun lt!204485 () array!27859)

(declare-fun lt!204487 () array!27857)

(declare-fun lt!204484 () ListLongMap!6835)

(declare-fun defaultEntry!557 () Int)

(declare-fun getCurrentListMapNoExtraKeys!1613 (array!27859 array!27857 (_ BitVec 32) (_ BitVec 32) V!17165 V!17165 (_ BitVec 32) Int) ListLongMap!6835)

(assert (=> b!449932 (= lt!204484 (getCurrentListMapNoExtraKeys!1613 lt!204485 lt!204487 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!449932 (= lt!204487 (array!27858 (store (arr!13371 _values!549) i!563 (ValueCellFull!5679 v!412)) (size!13723 _values!549)))))

(declare-fun lt!204486 () ListLongMap!6835)

(assert (=> b!449932 (= lt!204486 (getCurrentListMapNoExtraKeys!1613 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun c!55892 () Bool)

(declare-fun bm!29707 () Bool)

(assert (=> bm!29707 (= call!29710 (getCurrentListMapNoExtraKeys!1613 (ite c!55892 lt!204485 _keys!709) (ite c!55892 lt!204487 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!29708 () Bool)

(assert (=> bm!29708 (= call!29711 (getCurrentListMapNoExtraKeys!1613 (ite c!55892 _keys!709 lt!204485) (ite c!55892 _values!549 lt!204487) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!449933 () Bool)

(declare-fun res!267822 () Bool)

(assert (=> b!449933 (=> (not res!267822) (not e!263708))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!449933 (= res!267822 (validMask!0 mask!1025))))

(declare-fun b!449934 () Bool)

(declare-fun res!267823 () Bool)

(assert (=> b!449934 (=> (not res!267823) (not e!263702))))

(assert (=> b!449934 (= res!267823 (bvsle from!863 i!563))))

(declare-fun b!449935 () Bool)

(declare-fun res!267813 () Bool)

(assert (=> b!449935 (=> (not res!267813) (not e!263702))))

(declare-datatypes ((List!8019 0))(
  ( (Nil!8016) (Cons!8015 (h!8871 (_ BitVec 64)) (t!13789 List!8019)) )
))
(declare-fun arrayNoDuplicates!0 (array!27859 (_ BitVec 32) List!8019) Bool)

(assert (=> b!449935 (= res!267813 (arrayNoDuplicates!0 lt!204485 #b00000000000000000000000000000000 Nil!8016))))

(declare-fun b!449936 () Bool)

(assert (=> b!449936 (= e!263709 (= call!29711 call!29710))))

(declare-fun b!449937 () Bool)

(assert (=> b!449937 (= e!263707 (and e!263704 mapRes!19701))))

(declare-fun condMapEmpty!19701 () Bool)

(declare-fun mapDefault!19701 () ValueCell!5679)

(assert (=> b!449937 (= condMapEmpty!19701 (= (arr!13371 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5679)) mapDefault!19701)))))

(declare-fun b!449938 () Bool)

(assert (=> b!449938 (= e!263705 (not true))))

(assert (=> b!449938 e!263709))

(assert (=> b!449938 (= c!55892 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!13117 0))(
  ( (Unit!13118) )
))
(declare-fun lt!204483 () Unit!13117)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!677 (array!27859 array!27857 (_ BitVec 32) (_ BitVec 32) V!17165 V!17165 (_ BitVec 32) (_ BitVec 64) V!17165 (_ BitVec 32) Int) Unit!13117)

(assert (=> b!449938 (= lt!204483 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!677 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!449939 () Bool)

(assert (=> b!449939 (= e!263708 e!263702)))

(declare-fun res!267821 () Bool)

(assert (=> b!449939 (=> (not res!267821) (not e!263702))))

(assert (=> b!449939 (= res!267821 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204485 mask!1025))))

(assert (=> b!449939 (= lt!204485 (array!27860 (store (arr!13372 _keys!709) i!563 k0!794) (size!13724 _keys!709)))))

(declare-fun b!449940 () Bool)

(declare-fun res!267825 () Bool)

(assert (=> b!449940 (=> (not res!267825) (not e!263708))))

(assert (=> b!449940 (= res!267825 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8016))))

(declare-fun b!449941 () Bool)

(declare-fun res!267824 () Bool)

(assert (=> b!449941 (=> (not res!267824) (not e!263708))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!449941 (= res!267824 (validKeyInArray!0 k0!794))))

(assert (= (and start!40704 res!267820) b!449933))

(assert (= (and b!449933 res!267822) b!449925))

(assert (= (and b!449925 res!267816) b!449924))

(assert (= (and b!449924 res!267814) b!449940))

(assert (= (and b!449940 res!267825) b!449930))

(assert (= (and b!449930 res!267819) b!449941))

(assert (= (and b!449941 res!267824) b!449926))

(assert (= (and b!449926 res!267817) b!449931))

(assert (= (and b!449931 res!267815) b!449939))

(assert (= (and b!449939 res!267821) b!449935))

(assert (= (and b!449935 res!267813) b!449934))

(assert (= (and b!449934 res!267823) b!449932))

(assert (= (and b!449932 res!267818) b!449938))

(assert (= (and b!449938 c!55892) b!449929))

(assert (= (and b!449938 (not c!55892)) b!449936))

(assert (= (or b!449929 b!449936) bm!29707))

(assert (= (or b!449929 b!449936) bm!29708))

(assert (= (and b!449937 condMapEmpty!19701) mapIsEmpty!19701))

(assert (= (and b!449937 (not condMapEmpty!19701)) mapNonEmpty!19701))

(get-info :version)

(assert (= (and mapNonEmpty!19701 ((_ is ValueCellFull!5679) mapValue!19701)) b!449928))

(assert (= (and b!449937 ((_ is ValueCellFull!5679) mapDefault!19701)) b!449927))

(assert (= start!40704 b!449937))

(declare-fun m!433957 () Bool)

(assert (=> b!449931 m!433957))

(declare-fun m!433959 () Bool)

(assert (=> bm!29707 m!433959))

(declare-fun m!433961 () Bool)

(assert (=> b!449924 m!433961))

(declare-fun m!433963 () Bool)

(assert (=> b!449932 m!433963))

(declare-fun m!433965 () Bool)

(assert (=> b!449932 m!433965))

(declare-fun m!433967 () Bool)

(assert (=> b!449932 m!433967))

(declare-fun m!433969 () Bool)

(assert (=> start!40704 m!433969))

(declare-fun m!433971 () Bool)

(assert (=> start!40704 m!433971))

(declare-fun m!433973 () Bool)

(assert (=> bm!29708 m!433973))

(declare-fun m!433975 () Bool)

(assert (=> mapNonEmpty!19701 m!433975))

(declare-fun m!433977 () Bool)

(assert (=> b!449933 m!433977))

(declare-fun m!433979 () Bool)

(assert (=> b!449926 m!433979))

(declare-fun m!433981 () Bool)

(assert (=> b!449929 m!433981))

(declare-fun m!433983 () Bool)

(assert (=> b!449940 m!433983))

(declare-fun m!433985 () Bool)

(assert (=> b!449935 m!433985))

(declare-fun m!433987 () Bool)

(assert (=> b!449938 m!433987))

(declare-fun m!433989 () Bool)

(assert (=> b!449941 m!433989))

(declare-fun m!433991 () Bool)

(assert (=> b!449939 m!433991))

(declare-fun m!433993 () Bool)

(assert (=> b!449939 m!433993))

(check-sat tp_is_empty!12045 (not b!449924) (not b!449932) b_and!18733 (not start!40704) (not bm!29708) (not b!449931) (not b!449938) (not b_next!10707) (not b!449939) (not b!449941) (not mapNonEmpty!19701) (not b!449929) (not b!449933) (not bm!29707) (not b!449940) (not b!449935))
(check-sat b_and!18733 (not b_next!10707))
