; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107160 () Bool)

(assert start!107160)

(declare-fun b_free!27629 () Bool)

(declare-fun b_next!27629 () Bool)

(assert (=> start!107160 (= b_free!27629 (not b_next!27629))))

(declare-fun tp!97114 () Bool)

(declare-fun b_and!45671 () Bool)

(assert (=> start!107160 (= tp!97114 b_and!45671)))

(declare-fun b!1269985 () Bool)

(declare-fun res!845231 () Bool)

(declare-fun e!723906 () Bool)

(assert (=> b!1269985 (=> (not res!845231) (not e!723906))))

(declare-datatypes ((array!82859 0))(
  ( (array!82860 (arr!39962 (Array (_ BitVec 32) (_ BitVec 64))) (size!40499 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82859)

(declare-datatypes ((List!28634 0))(
  ( (Nil!28631) (Cons!28630 (h!29839 (_ BitVec 64)) (t!42170 List!28634)) )
))
(declare-fun arrayNoDuplicates!0 (array!82859 (_ BitVec 32) List!28634) Bool)

(assert (=> b!1269985 (= res!845231 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28631))))

(declare-fun b!1269986 () Bool)

(declare-fun res!845230 () Bool)

(assert (=> b!1269986 (=> (not res!845230) (not e!723906))))

(declare-fun from!1698 () (_ BitVec 32))

(assert (=> b!1269986 (= res!845230 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40499 _keys!1364)) (bvslt from!1698 (size!40499 _keys!1364)) (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000)))))

(declare-fun b!1269987 () Bool)

(declare-fun res!845229 () Bool)

(assert (=> b!1269987 (=> (not res!845229) (not e!723906))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82859 (_ BitVec 32)) Bool)

(assert (=> b!1269987 (= res!845229 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun mapIsEmpty!50800 () Bool)

(declare-fun mapRes!50800 () Bool)

(assert (=> mapIsEmpty!50800 mapRes!50800))

(declare-fun b!1269988 () Bool)

(declare-fun res!845228 () Bool)

(assert (=> b!1269988 (=> (not res!845228) (not e!723906))))

(declare-datatypes ((V!48943 0))(
  ( (V!48944 (val!16481 Int)) )
))
(declare-datatypes ((ValueCell!15553 0))(
  ( (ValueCellFull!15553 (v!19116 V!48943)) (EmptyCell!15553) )
))
(declare-datatypes ((array!82861 0))(
  ( (array!82862 (arr!39963 (Array (_ BitVec 32) ValueCell!15553)) (size!40500 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82861)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1269988 (= res!845228 (and (= (size!40500 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40499 _keys!1364) (size!40500 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1269989 () Bool)

(assert (=> b!1269989 (= e!723906 (not true))))

(declare-fun minValueAfter!52 () V!48943)

(declare-fun minValueBefore!52 () V!48943)

(declare-fun defaultEntry!1142 () Int)

(declare-fun zeroValueAfter!52 () V!48943)

(declare-fun zeroValueBefore!52 () V!48943)

(declare-datatypes ((tuple2!21498 0))(
  ( (tuple2!21499 (_1!10759 (_ BitVec 64)) (_2!10759 V!48943)) )
))
(declare-datatypes ((List!28635 0))(
  ( (Nil!28632) (Cons!28631 (h!29840 tuple2!21498) (t!42171 List!28635)) )
))
(declare-datatypes ((ListLongMap!19239 0))(
  ( (ListLongMap!19240 (toList!9635 List!28635)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5943 (array!82859 array!82861 (_ BitVec 32) (_ BitVec 32) V!48943 V!48943 (_ BitVec 32) Int) ListLongMap!19239)

(assert (=> b!1269989 (= (getCurrentListMapNoExtraKeys!5943 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) (getCurrentListMapNoExtraKeys!5943 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-datatypes ((Unit!42242 0))(
  ( (Unit!42243) )
))
(declare-fun lt!574592 () Unit!42242)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1239 (array!82859 array!82861 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48943 V!48943 V!48943 V!48943 (_ BitVec 32) Int) Unit!42242)

(assert (=> b!1269989 (= lt!574592 (lemmaNoChangeToArrayThenSameMapNoExtras!1239 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 extraKeysAfter!73 zeroValueBefore!52 zeroValueAfter!52 minValueBefore!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-fun b!1269990 () Bool)

(declare-fun e!723908 () Bool)

(declare-fun tp_is_empty!32813 () Bool)

(assert (=> b!1269990 (= e!723908 tp_is_empty!32813)))

(declare-fun b!1269991 () Bool)

(declare-fun e!723904 () Bool)

(assert (=> b!1269991 (= e!723904 (and e!723908 mapRes!50800))))

(declare-fun condMapEmpty!50800 () Bool)

(declare-fun mapDefault!50800 () ValueCell!15553)

