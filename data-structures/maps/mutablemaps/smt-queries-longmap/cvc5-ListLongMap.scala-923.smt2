; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20646 () Bool)

(assert start!20646)

(declare-fun b_free!5293 () Bool)

(declare-fun b_next!5293 () Bool)

(assert (=> start!20646 (= b_free!5293 (not b_next!5293))))

(declare-fun tp!18911 () Bool)

(declare-fun b_and!12057 () Bool)

(assert (=> start!20646 (= tp!18911 b_and!12057)))

(declare-fun b!205876 () Bool)

(declare-fun e!134611 () Bool)

(declare-fun e!134605 () Bool)

(assert (=> b!205876 (= e!134611 e!134605)))

(declare-fun res!99615 () Bool)

(assert (=> b!205876 (=> res!99615 e!134605)))

(declare-fun k!843 () (_ BitVec 64))

(assert (=> b!205876 (= res!99615 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!6513 0))(
  ( (V!6514 (val!2619 Int)) )
))
(declare-datatypes ((tuple2!3970 0))(
  ( (tuple2!3971 (_1!1995 (_ BitVec 64)) (_2!1995 V!6513)) )
))
(declare-datatypes ((List!2888 0))(
  ( (Nil!2885) (Cons!2884 (h!3526 tuple2!3970) (t!7827 List!2888)) )
))
(declare-datatypes ((ListLongMap!2897 0))(
  ( (ListLongMap!2898 (toList!1464 List!2888)) )
))
(declare-fun lt!105077 () ListLongMap!2897)

(declare-fun lt!105084 () ListLongMap!2897)

(assert (=> b!205876 (= lt!105077 lt!105084)))

(declare-fun lt!105078 () ListLongMap!2897)

(declare-fun lt!105076 () tuple2!3970)

(declare-fun +!481 (ListLongMap!2897 tuple2!3970) ListLongMap!2897)

(assert (=> b!205876 (= lt!105084 (+!481 lt!105078 lt!105076))))

(declare-fun lt!105075 () ListLongMap!2897)

(declare-fun lt!105081 () ListLongMap!2897)

(assert (=> b!205876 (= lt!105075 lt!105081)))

(declare-fun lt!105085 () ListLongMap!2897)

(assert (=> b!205876 (= lt!105081 (+!481 lt!105085 lt!105076))))

(declare-fun lt!105079 () ListLongMap!2897)

(assert (=> b!205876 (= lt!105075 (+!481 lt!105079 lt!105076))))

(declare-fun minValue!615 () V!6513)

(assert (=> b!205876 (= lt!105076 (tuple2!3971 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!205877 () Bool)

(declare-fun res!99617 () Bool)

(declare-fun e!134607 () Bool)

(assert (=> b!205877 (=> (not res!99617) (not e!134607))))

(declare-datatypes ((array!9508 0))(
  ( (array!9509 (arr!4504 (Array (_ BitVec 32) (_ BitVec 64))) (size!4829 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9508)

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!205877 (= res!99617 (= (select (arr!4504 _keys!825) i!601) k!843))))

(declare-fun res!99619 () Bool)

(assert (=> start!20646 (=> (not res!99619) (not e!134607))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20646 (= res!99619 (validMask!0 mask!1149))))

(assert (=> start!20646 e!134607))

(declare-datatypes ((ValueCell!2231 0))(
  ( (ValueCellFull!2231 (v!4585 V!6513)) (EmptyCell!2231) )
))
(declare-datatypes ((array!9510 0))(
  ( (array!9511 (arr!4505 (Array (_ BitVec 32) ValueCell!2231)) (size!4830 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9510)

(declare-fun e!134606 () Bool)

(declare-fun array_inv!2967 (array!9510) Bool)

(assert (=> start!20646 (and (array_inv!2967 _values!649) e!134606)))

(assert (=> start!20646 true))

(declare-fun tp_is_empty!5149 () Bool)

(assert (=> start!20646 tp_is_empty!5149))

(declare-fun array_inv!2968 (array!9508) Bool)

(assert (=> start!20646 (array_inv!2968 _keys!825)))

(assert (=> start!20646 tp!18911))

(declare-fun b!205878 () Bool)

(declare-fun res!99614 () Bool)

(assert (=> b!205878 (=> (not res!99614) (not e!134607))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!205878 (= res!99614 (validKeyInArray!0 k!843))))

(declare-fun b!205879 () Bool)

(assert (=> b!205879 (= e!134605 true)))

(declare-fun lt!105083 () tuple2!3970)

(assert (=> b!205879 (= lt!105081 (+!481 lt!105084 lt!105083))))

(declare-datatypes ((Unit!6259 0))(
  ( (Unit!6260) )
))
(declare-fun lt!105080 () Unit!6259)

(declare-fun v!520 () V!6513)

(declare-fun addCommutativeForDiffKeys!180 (ListLongMap!2897 (_ BitVec 64) V!6513 (_ BitVec 64) V!6513) Unit!6259)

(assert (=> b!205879 (= lt!105080 (addCommutativeForDiffKeys!180 lt!105078 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!205880 () Bool)

(declare-fun e!134609 () Bool)

(assert (=> b!205880 (= e!134609 tp_is_empty!5149)))

(declare-fun b!205881 () Bool)

(declare-fun res!99611 () Bool)

(assert (=> b!205881 (=> (not res!99611) (not e!134607))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!205881 (= res!99611 (and (= (size!4830 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4829 _keys!825) (size!4830 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!205882 () Bool)

(declare-fun res!99616 () Bool)

(assert (=> b!205882 (=> (not res!99616) (not e!134607))))

(assert (=> b!205882 (= res!99616 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4829 _keys!825))))))

(declare-fun b!205883 () Bool)

(assert (=> b!205883 (= e!134607 (not e!134611))))

(declare-fun res!99612 () Bool)

(assert (=> b!205883 (=> res!99612 e!134611)))

(assert (=> b!205883 (= res!99612 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun zeroValue!615 () V!6513)

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!1029 (array!9508 array!9510 (_ BitVec 32) (_ BitVec 32) V!6513 V!6513 (_ BitVec 32) Int) ListLongMap!2897)

(assert (=> b!205883 (= lt!105077 (getCurrentListMap!1029 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105082 () array!9510)

(assert (=> b!205883 (= lt!105075 (getCurrentListMap!1029 _keys!825 lt!105082 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!205883 (and (= lt!105079 lt!105085) (= lt!105085 lt!105079))))

(assert (=> b!205883 (= lt!105085 (+!481 lt!105078 lt!105083))))

(assert (=> b!205883 (= lt!105083 (tuple2!3971 k!843 v!520))))

(declare-fun lt!105074 () Unit!6259)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!142 (array!9508 array!9510 (_ BitVec 32) (_ BitVec 32) V!6513 V!6513 (_ BitVec 32) (_ BitVec 64) V!6513 (_ BitVec 32) Int) Unit!6259)

(assert (=> b!205883 (= lt!105074 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!142 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!400 (array!9508 array!9510 (_ BitVec 32) (_ BitVec 32) V!6513 V!6513 (_ BitVec 32) Int) ListLongMap!2897)

(assert (=> b!205883 (= lt!105079 (getCurrentListMapNoExtraKeys!400 _keys!825 lt!105082 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!205883 (= lt!105082 (array!9511 (store (arr!4505 _values!649) i!601 (ValueCellFull!2231 v!520)) (size!4830 _values!649)))))

(assert (=> b!205883 (= lt!105078 (getCurrentListMapNoExtraKeys!400 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!205884 () Bool)

(declare-fun mapRes!8792 () Bool)

(assert (=> b!205884 (= e!134606 (and e!134609 mapRes!8792))))

(declare-fun condMapEmpty!8792 () Bool)

(declare-fun mapDefault!8792 () ValueCell!2231)

