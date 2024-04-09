; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107346 () Bool)

(assert start!107346)

(declare-fun b!1271715 () Bool)

(declare-fun e!725303 () Bool)

(declare-fun tp_is_empty!32999 () Bool)

(assert (=> b!1271715 (= e!725303 tp_is_empty!32999)))

(declare-fun res!846122 () Bool)

(declare-fun e!725300 () Bool)

(assert (=> start!107346 (=> (not res!846122) (not e!725300))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107346 (= res!846122 (validMask!0 mask!1730))))

(assert (=> start!107346 e!725300))

(declare-datatypes ((V!49191 0))(
  ( (V!49192 (val!16574 Int)) )
))
(declare-datatypes ((ValueCell!15646 0))(
  ( (ValueCellFull!15646 (v!19209 V!49191)) (EmptyCell!15646) )
))
(declare-datatypes ((array!83193 0))(
  ( (array!83194 (arr!40129 (Array (_ BitVec 32) ValueCell!15646)) (size!40666 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83193)

(declare-fun e!725299 () Bool)

(declare-fun array_inv!30461 (array!83193) Bool)

(assert (=> start!107346 (and (array_inv!30461 _values!1134) e!725299)))

(assert (=> start!107346 true))

(declare-datatypes ((array!83195 0))(
  ( (array!83196 (arr!40130 (Array (_ BitVec 32) (_ BitVec 64))) (size!40667 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83195)

(declare-fun array_inv!30462 (array!83195) Bool)

(assert (=> start!107346 (array_inv!30462 _keys!1364)))

(declare-fun b!1271716 () Bool)

(declare-fun e!725301 () Bool)

(assert (=> b!1271716 (= e!725301 tp_is_empty!32999)))

(declare-fun b!1271717 () Bool)

(declare-fun res!846120 () Bool)

(assert (=> b!1271717 (=> (not res!846120) (not e!725300))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83195 (_ BitVec 32)) Bool)

(assert (=> b!1271717 (= res!846120 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun mapNonEmpty!51079 () Bool)

(declare-fun mapRes!51079 () Bool)

(declare-fun tp!97421 () Bool)

(assert (=> mapNonEmpty!51079 (= mapRes!51079 (and tp!97421 e!725301))))

(declare-fun mapKey!51079 () (_ BitVec 32))

(declare-fun mapValue!51079 () ValueCell!15646)

(declare-fun mapRest!51079 () (Array (_ BitVec 32) ValueCell!15646))

(assert (=> mapNonEmpty!51079 (= (arr!40129 _values!1134) (store mapRest!51079 mapKey!51079 mapValue!51079))))

(declare-fun b!1271718 () Bool)

(declare-fun res!846121 () Bool)

(assert (=> b!1271718 (=> (not res!846121) (not e!725300))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1271718 (= res!846121 (and (= (size!40666 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40667 _keys!1364) (size!40666 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!51079 () Bool)

(assert (=> mapIsEmpty!51079 mapRes!51079))

(declare-fun b!1271719 () Bool)

(assert (=> b!1271719 (= e!725300 false)))

(declare-fun lt!574871 () Bool)

(declare-datatypes ((List!28699 0))(
  ( (Nil!28696) (Cons!28695 (h!29904 (_ BitVec 64)) (t!42235 List!28699)) )
))
(declare-fun arrayNoDuplicates!0 (array!83195 (_ BitVec 32) List!28699) Bool)

(assert (=> b!1271719 (= lt!574871 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28696))))

(declare-fun b!1271720 () Bool)

(assert (=> b!1271720 (= e!725299 (and e!725303 mapRes!51079))))

(declare-fun condMapEmpty!51079 () Bool)

(declare-fun mapDefault!51079 () ValueCell!15646)

