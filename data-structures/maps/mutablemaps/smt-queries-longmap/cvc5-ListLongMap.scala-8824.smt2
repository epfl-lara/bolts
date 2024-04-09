; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107204 () Bool)

(assert start!107204)

(declare-fun b!1270437 () Bool)

(declare-fun e!724237 () Bool)

(assert (=> b!1270437 (= e!724237 false)))

(declare-fun lt!574658 () Bool)

(declare-datatypes ((array!82941 0))(
  ( (array!82942 (arr!40003 (Array (_ BitVec 32) (_ BitVec 64))) (size!40540 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82941)

(declare-datatypes ((List!28655 0))(
  ( (Nil!28652) (Cons!28651 (h!29860 (_ BitVec 64)) (t!42191 List!28655)) )
))
(declare-fun arrayNoDuplicates!0 (array!82941 (_ BitVec 32) List!28655) Bool)

(assert (=> b!1270437 (= lt!574658 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28652))))

(declare-fun b!1270438 () Bool)

(declare-fun res!845483 () Bool)

(assert (=> b!1270438 (=> (not res!845483) (not e!724237))))

(declare-datatypes ((V!49003 0))(
  ( (V!49004 (val!16503 Int)) )
))
(declare-datatypes ((ValueCell!15575 0))(
  ( (ValueCellFull!15575 (v!19138 V!49003)) (EmptyCell!15575) )
))
(declare-datatypes ((array!82943 0))(
  ( (array!82944 (arr!40004 (Array (_ BitVec 32) ValueCell!15575)) (size!40541 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82943)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1270438 (= res!845483 (and (= (size!40541 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40540 _keys!1364) (size!40541 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!50866 () Bool)

(declare-fun mapRes!50866 () Bool)

(declare-fun tp!97208 () Bool)

(declare-fun e!724235 () Bool)

(assert (=> mapNonEmpty!50866 (= mapRes!50866 (and tp!97208 e!724235))))

(declare-fun mapValue!50866 () ValueCell!15575)

(declare-fun mapKey!50866 () (_ BitVec 32))

(declare-fun mapRest!50866 () (Array (_ BitVec 32) ValueCell!15575))

(assert (=> mapNonEmpty!50866 (= (arr!40004 _values!1134) (store mapRest!50866 mapKey!50866 mapValue!50866))))

(declare-fun mapIsEmpty!50866 () Bool)

(assert (=> mapIsEmpty!50866 mapRes!50866))

(declare-fun b!1270439 () Bool)

(declare-fun e!724236 () Bool)

(declare-fun e!724238 () Bool)

(assert (=> b!1270439 (= e!724236 (and e!724238 mapRes!50866))))

(declare-fun condMapEmpty!50866 () Bool)

(declare-fun mapDefault!50866 () ValueCell!15575)

