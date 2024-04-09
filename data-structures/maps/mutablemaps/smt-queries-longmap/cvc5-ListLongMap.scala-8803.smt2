; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107078 () Bool)

(assert start!107078)

(declare-fun b_free!27547 () Bool)

(declare-fun b_next!27547 () Bool)

(assert (=> start!107078 (= b_free!27547 (not b_next!27547))))

(declare-fun tp!96868 () Bool)

(declare-fun b_and!45589 () Bool)

(assert (=> start!107078 (= tp!96868 b_and!45589)))

(declare-fun b!1269001 () Bool)

(declare-fun e!723291 () Bool)

(declare-fun tp_is_empty!32731 () Bool)

(assert (=> b!1269001 (= e!723291 tp_is_empty!32731)))

(declare-fun b!1269002 () Bool)

(declare-fun e!723292 () Bool)

(assert (=> b!1269002 (= e!723292 tp_is_empty!32731)))

(declare-fun b!1269003 () Bool)

(declare-fun res!844612 () Bool)

(declare-fun e!723289 () Bool)

(assert (=> b!1269003 (=> (not res!844612) (not e!723289))))

(declare-datatypes ((array!82705 0))(
  ( (array!82706 (arr!39885 (Array (_ BitVec 32) (_ BitVec 64))) (size!40422 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82705)

(declare-datatypes ((List!28583 0))(
  ( (Nil!28580) (Cons!28579 (h!29788 (_ BitVec 64)) (t!42119 List!28583)) )
))
(declare-fun arrayNoDuplicates!0 (array!82705 (_ BitVec 32) List!28583) Bool)

(assert (=> b!1269003 (= res!844612 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28580))))

(declare-fun mapIsEmpty!50677 () Bool)

(declare-fun mapRes!50677 () Bool)

(assert (=> mapIsEmpty!50677 mapRes!50677))

(declare-fun res!844614 () Bool)

(assert (=> start!107078 (=> (not res!844614) (not e!723289))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107078 (= res!844614 (validMask!0 mask!1730))))

(assert (=> start!107078 e!723289))

(declare-datatypes ((V!48835 0))(
  ( (V!48836 (val!16440 Int)) )
))
(declare-datatypes ((ValueCell!15512 0))(
  ( (ValueCellFull!15512 (v!19075 V!48835)) (EmptyCell!15512) )
))
(declare-datatypes ((array!82707 0))(
  ( (array!82708 (arr!39886 (Array (_ BitVec 32) ValueCell!15512)) (size!40423 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82707)

(declare-fun e!723290 () Bool)

(declare-fun array_inv!30307 (array!82707) Bool)

(assert (=> start!107078 (and (array_inv!30307 _values!1134) e!723290)))

(assert (=> start!107078 true))

(declare-fun array_inv!30308 (array!82705) Bool)

(assert (=> start!107078 (array_inv!30308 _keys!1364)))

(assert (=> start!107078 tp_is_empty!32731))

(assert (=> start!107078 tp!96868))

(declare-fun b!1269004 () Bool)

(declare-fun res!844616 () Bool)

(assert (=> b!1269004 (=> (not res!844616) (not e!723289))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1269004 (= res!844616 (and (= (size!40423 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40422 _keys!1364) (size!40423 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1269005 () Bool)

(assert (=> b!1269005 (= e!723289 (not true))))

(declare-fun from!1698 () (_ BitVec 32))

(declare-fun minValueAfter!52 () V!48835)

(declare-fun minValueBefore!52 () V!48835)

(declare-fun defaultEntry!1142 () Int)

(declare-fun zeroValueAfter!52 () V!48835)

(declare-fun zeroValueBefore!52 () V!48835)

(declare-datatypes ((tuple2!21446 0))(
  ( (tuple2!21447 (_1!10733 (_ BitVec 64)) (_2!10733 V!48835)) )
))
(declare-datatypes ((List!28584 0))(
  ( (Nil!28581) (Cons!28580 (h!29789 tuple2!21446) (t!42120 List!28584)) )
))
(declare-datatypes ((ListLongMap!19187 0))(
  ( (ListLongMap!19188 (toList!9609 List!28584)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5917 (array!82705 array!82707 (_ BitVec 32) (_ BitVec 32) V!48835 V!48835 (_ BitVec 32) Int) ListLongMap!19187)

(assert (=> b!1269005 (= (getCurrentListMapNoExtraKeys!5917 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) (getCurrentListMapNoExtraKeys!5917 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-datatypes ((Unit!42190 0))(
  ( (Unit!42191) )
))
(declare-fun lt!574469 () Unit!42190)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1213 (array!82705 array!82707 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48835 V!48835 V!48835 V!48835 (_ BitVec 32) Int) Unit!42190)

(assert (=> b!1269005 (= lt!574469 (lemmaNoChangeToArrayThenSameMapNoExtras!1213 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 extraKeysAfter!73 zeroValueBefore!52 zeroValueAfter!52 minValueBefore!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-fun b!1269006 () Bool)

(declare-fun res!844615 () Bool)

(assert (=> b!1269006 (=> (not res!844615) (not e!723289))))

(assert (=> b!1269006 (= res!844615 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40422 _keys!1364)) (bvslt from!1698 (size!40422 _keys!1364)) (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000)))))

(declare-fun b!1269007 () Bool)

(assert (=> b!1269007 (= e!723290 (and e!723292 mapRes!50677))))

(declare-fun condMapEmpty!50677 () Bool)

(declare-fun mapDefault!50677 () ValueCell!15512)

