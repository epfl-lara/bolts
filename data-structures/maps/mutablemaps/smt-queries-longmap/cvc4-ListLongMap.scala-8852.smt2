; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107390 () Bool)

(assert start!107390)

(declare-fun b_free!27659 () Bool)

(declare-fun b_next!27659 () Bool)

(assert (=> start!107390 (= b_free!27659 (not b_next!27659))))

(declare-fun tp!97486 () Bool)

(declare-fun b_and!45717 () Bool)

(assert (=> start!107390 (= tp!97486 b_and!45717)))

(declare-fun res!846347 () Bool)

(declare-fun e!725594 () Bool)

(assert (=> start!107390 (=> (not res!846347) (not e!725594))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107390 (= res!846347 (validMask!0 mask!1730))))

(assert (=> start!107390 e!725594))

(declare-datatypes ((V!49231 0))(
  ( (V!49232 (val!16589 Int)) )
))
(declare-datatypes ((ValueCell!15661 0))(
  ( (ValueCellFull!15661 (v!19224 V!49231)) (EmptyCell!15661) )
))
(declare-datatypes ((array!83251 0))(
  ( (array!83252 (arr!40157 (Array (_ BitVec 32) ValueCell!15661)) (size!40694 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83251)

(declare-fun e!725596 () Bool)

(declare-fun array_inv!30485 (array!83251) Bool)

(assert (=> start!107390 (and (array_inv!30485 _values!1134) e!725596)))

(assert (=> start!107390 true))

(declare-datatypes ((array!83253 0))(
  ( (array!83254 (arr!40158 (Array (_ BitVec 32) (_ BitVec 64))) (size!40695 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83253)

(declare-fun array_inv!30486 (array!83253) Bool)

(assert (=> start!107390 (array_inv!30486 _keys!1364)))

(declare-fun tp_is_empty!33029 () Bool)

(assert (=> start!107390 tp_is_empty!33029))

(assert (=> start!107390 tp!97486))

(declare-fun b!1272146 () Bool)

(declare-fun e!725593 () Bool)

(assert (=> b!1272146 (= e!725593 tp_is_empty!33029)))

(declare-fun from!1698 () (_ BitVec 32))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun b!1272147 () Bool)

(declare-fun minValueAfter!52 () V!49231)

(declare-fun minValueBefore!52 () V!49231)

(declare-fun defaultEntry!1142 () Int)

(declare-fun zeroValueAfter!52 () V!49231)

(declare-fun zeroValueBefore!52 () V!49231)

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(declare-datatypes ((tuple2!21520 0))(
  ( (tuple2!21521 (_1!10770 (_ BitVec 64)) (_2!10770 V!49231)) )
))
(declare-datatypes ((List!28714 0))(
  ( (Nil!28711) (Cons!28710 (h!29919 tuple2!21520) (t!42252 List!28714)) )
))
(declare-datatypes ((ListLongMap!19261 0))(
  ( (ListLongMap!19262 (toList!9646 List!28714)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5954 (array!83253 array!83251 (_ BitVec 32) (_ BitVec 32) V!49231 V!49231 (_ BitVec 32) Int) ListLongMap!19261)

(assert (=> b!1272147 (= e!725594 (not (= (getCurrentListMapNoExtraKeys!5954 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 from!1698 defaultEntry!1142) (getCurrentListMapNoExtraKeys!5954 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 from!1698 defaultEntry!1142))))))

(declare-fun b!1272148 () Bool)

(declare-fun res!846348 () Bool)

(assert (=> b!1272148 (=> (not res!846348) (not e!725594))))

(declare-datatypes ((List!28715 0))(
  ( (Nil!28712) (Cons!28711 (h!29920 (_ BitVec 64)) (t!42253 List!28715)) )
))
(declare-fun arrayNoDuplicates!0 (array!83253 (_ BitVec 32) List!28715) Bool)

(assert (=> b!1272148 (= res!846348 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28712))))

(declare-fun b!1272149 () Bool)

(declare-fun res!846350 () Bool)

(assert (=> b!1272149 (=> (not res!846350) (not e!725594))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83253 (_ BitVec 32)) Bool)

(assert (=> b!1272149 (= res!846350 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun mapNonEmpty!51127 () Bool)

(declare-fun mapRes!51127 () Bool)

(declare-fun tp!97487 () Bool)

(declare-fun e!725597 () Bool)

(assert (=> mapNonEmpty!51127 (= mapRes!51127 (and tp!97487 e!725597))))

(declare-fun mapValue!51127 () ValueCell!15661)

(declare-fun mapKey!51127 () (_ BitVec 32))

(declare-fun mapRest!51127 () (Array (_ BitVec 32) ValueCell!15661))

(assert (=> mapNonEmpty!51127 (= (arr!40157 _values!1134) (store mapRest!51127 mapKey!51127 mapValue!51127))))

(declare-fun mapIsEmpty!51127 () Bool)

(assert (=> mapIsEmpty!51127 mapRes!51127))

(declare-fun b!1272150 () Bool)

(declare-fun res!846349 () Bool)

(assert (=> b!1272150 (=> (not res!846349) (not e!725594))))

(assert (=> b!1272150 (= res!846349 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40695 _keys!1364)) (bvsge from!1698 (size!40695 _keys!1364))))))

(declare-fun b!1272151 () Bool)

(declare-fun res!846346 () Bool)

(assert (=> b!1272151 (=> (not res!846346) (not e!725594))))

(assert (=> b!1272151 (= res!846346 (and (= (size!40694 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40695 _keys!1364) (size!40694 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1272152 () Bool)

(assert (=> b!1272152 (= e!725597 tp_is_empty!33029)))

(declare-fun b!1272153 () Bool)

(assert (=> b!1272153 (= e!725596 (and e!725593 mapRes!51127))))

(declare-fun condMapEmpty!51127 () Bool)

(declare-fun mapDefault!51127 () ValueCell!15661)

