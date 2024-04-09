; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107386 () Bool)

(assert start!107386)

(declare-fun b_free!27655 () Bool)

(declare-fun b_next!27655 () Bool)

(assert (=> start!107386 (= b_free!27655 (not b_next!27655))))

(declare-fun tp!97475 () Bool)

(declare-fun b_and!45713 () Bool)

(assert (=> start!107386 (= tp!97475 b_and!45713)))

(declare-fun b!1272098 () Bool)

(declare-fun res!846318 () Bool)

(declare-fun e!725567 () Bool)

(assert (=> b!1272098 (=> (not res!846318) (not e!725567))))

(declare-datatypes ((array!83243 0))(
  ( (array!83244 (arr!40153 (Array (_ BitVec 32) (_ BitVec 64))) (size!40690 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83243)

(declare-datatypes ((List!28710 0))(
  ( (Nil!28707) (Cons!28706 (h!29915 (_ BitVec 64)) (t!42248 List!28710)) )
))
(declare-fun arrayNoDuplicates!0 (array!83243 (_ BitVec 32) List!28710) Bool)

(assert (=> b!1272098 (= res!846318 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28707))))

(declare-fun mapNonEmpty!51121 () Bool)

(declare-fun mapRes!51121 () Bool)

(declare-fun tp!97474 () Bool)

(declare-fun e!725566 () Bool)

(assert (=> mapNonEmpty!51121 (= mapRes!51121 (and tp!97474 e!725566))))

(declare-datatypes ((V!49227 0))(
  ( (V!49228 (val!16587 Int)) )
))
(declare-datatypes ((ValueCell!15659 0))(
  ( (ValueCellFull!15659 (v!19222 V!49227)) (EmptyCell!15659) )
))
(declare-datatypes ((array!83245 0))(
  ( (array!83246 (arr!40154 (Array (_ BitVec 32) ValueCell!15659)) (size!40691 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83245)

(declare-fun mapKey!51121 () (_ BitVec 32))

(declare-fun mapRest!51121 () (Array (_ BitVec 32) ValueCell!15659))

(declare-fun mapValue!51121 () ValueCell!15659)

(assert (=> mapNonEmpty!51121 (= (arr!40154 _values!1134) (store mapRest!51121 mapKey!51121 mapValue!51121))))

(declare-fun from!1698 () (_ BitVec 32))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun minValueAfter!52 () V!49227)

(declare-fun b!1272099 () Bool)

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(declare-fun minValueBefore!52 () V!49227)

(declare-fun defaultEntry!1142 () Int)

(declare-fun zeroValueAfter!52 () V!49227)

(declare-fun zeroValueBefore!52 () V!49227)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-datatypes ((tuple2!21516 0))(
  ( (tuple2!21517 (_1!10768 (_ BitVec 64)) (_2!10768 V!49227)) )
))
(declare-datatypes ((List!28711 0))(
  ( (Nil!28708) (Cons!28707 (h!29916 tuple2!21516) (t!42249 List!28711)) )
))
(declare-datatypes ((ListLongMap!19257 0))(
  ( (ListLongMap!19258 (toList!9644 List!28711)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5952 (array!83243 array!83245 (_ BitVec 32) (_ BitVec 32) V!49227 V!49227 (_ BitVec 32) Int) ListLongMap!19257)

(assert (=> b!1272099 (= e!725567 (not (= (getCurrentListMapNoExtraKeys!5952 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 from!1698 defaultEntry!1142) (getCurrentListMapNoExtraKeys!5952 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 from!1698 defaultEntry!1142))))))

(declare-fun b!1272100 () Bool)

(declare-fun res!846316 () Bool)

(assert (=> b!1272100 (=> (not res!846316) (not e!725567))))

(assert (=> b!1272100 (= res!846316 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40690 _keys!1364)) (bvsge from!1698 (size!40690 _keys!1364))))))

(declare-fun b!1272101 () Bool)

(declare-fun res!846317 () Bool)

(assert (=> b!1272101 (=> (not res!846317) (not e!725567))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83243 (_ BitVec 32)) Bool)

(assert (=> b!1272101 (= res!846317 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1272102 () Bool)

(declare-fun e!725564 () Bool)

(declare-fun e!725563 () Bool)

(assert (=> b!1272102 (= e!725564 (and e!725563 mapRes!51121))))

(declare-fun condMapEmpty!51121 () Bool)

(declare-fun mapDefault!51121 () ValueCell!15659)

