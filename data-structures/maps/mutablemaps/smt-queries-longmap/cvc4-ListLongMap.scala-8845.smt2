; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107334 () Bool)

(assert start!107334)

(declare-fun b!1271607 () Bool)

(declare-fun res!846066 () Bool)

(declare-fun e!725209 () Bool)

(assert (=> b!1271607 (=> (not res!846066) (not e!725209))))

(declare-datatypes ((V!49175 0))(
  ( (V!49176 (val!16568 Int)) )
))
(declare-datatypes ((ValueCell!15640 0))(
  ( (ValueCellFull!15640 (v!19203 V!49175)) (EmptyCell!15640) )
))
(declare-datatypes ((array!83173 0))(
  ( (array!83174 (arr!40119 (Array (_ BitVec 32) ValueCell!15640)) (size!40656 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83173)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!83175 0))(
  ( (array!83176 (arr!40120 (Array (_ BitVec 32) (_ BitVec 64))) (size!40657 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83175)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1271607 (= res!846066 (and (= (size!40656 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40657 _keys!1364) (size!40656 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1271608 () Bool)

(declare-fun e!725213 () Bool)

(declare-fun tp_is_empty!32987 () Bool)

(assert (=> b!1271608 (= e!725213 tp_is_empty!32987)))

(declare-fun res!846067 () Bool)

(assert (=> start!107334 (=> (not res!846067) (not e!725209))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107334 (= res!846067 (validMask!0 mask!1730))))

(assert (=> start!107334 e!725209))

(declare-fun e!725212 () Bool)

(declare-fun array_inv!30453 (array!83173) Bool)

(assert (=> start!107334 (and (array_inv!30453 _values!1134) e!725212)))

(assert (=> start!107334 true))

(declare-fun array_inv!30454 (array!83175) Bool)

(assert (=> start!107334 (array_inv!30454 _keys!1364)))

(declare-fun mapIsEmpty!51061 () Bool)

(declare-fun mapRes!51061 () Bool)

(assert (=> mapIsEmpty!51061 mapRes!51061))

(declare-fun b!1271609 () Bool)

(assert (=> b!1271609 (= e!725209 false)))

(declare-fun lt!574853 () Bool)

(declare-datatypes ((List!28695 0))(
  ( (Nil!28692) (Cons!28691 (h!29900 (_ BitVec 64)) (t!42231 List!28695)) )
))
(declare-fun arrayNoDuplicates!0 (array!83175 (_ BitVec 32) List!28695) Bool)

(assert (=> b!1271609 (= lt!574853 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28692))))

(declare-fun b!1271610 () Bool)

(declare-fun res!846068 () Bool)

(assert (=> b!1271610 (=> (not res!846068) (not e!725209))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83175 (_ BitVec 32)) Bool)

(assert (=> b!1271610 (= res!846068 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun mapNonEmpty!51061 () Bool)

(declare-fun tp!97403 () Bool)

(declare-fun e!725210 () Bool)

(assert (=> mapNonEmpty!51061 (= mapRes!51061 (and tp!97403 e!725210))))

(declare-fun mapKey!51061 () (_ BitVec 32))

(declare-fun mapRest!51061 () (Array (_ BitVec 32) ValueCell!15640))

(declare-fun mapValue!51061 () ValueCell!15640)

(assert (=> mapNonEmpty!51061 (= (arr!40119 _values!1134) (store mapRest!51061 mapKey!51061 mapValue!51061))))

(declare-fun b!1271611 () Bool)

(assert (=> b!1271611 (= e!725212 (and e!725213 mapRes!51061))))

(declare-fun condMapEmpty!51061 () Bool)

(declare-fun mapDefault!51061 () ValueCell!15640)

