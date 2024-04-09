; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107354 () Bool)

(assert start!107354)

(declare-fun b!1271789 () Bool)

(declare-fun e!725359 () Bool)

(declare-fun tp_is_empty!33007 () Bool)

(assert (=> b!1271789 (= e!725359 tp_is_empty!33007)))

(declare-fun mapIsEmpty!51091 () Bool)

(declare-fun mapRes!51091 () Bool)

(assert (=> mapIsEmpty!51091 mapRes!51091))

(declare-fun b!1271790 () Bool)

(declare-fun res!846159 () Bool)

(declare-fun e!725363 () Bool)

(assert (=> b!1271790 (=> (not res!846159) (not e!725363))))

(declare-datatypes ((V!49203 0))(
  ( (V!49204 (val!16578 Int)) )
))
(declare-datatypes ((ValueCell!15650 0))(
  ( (ValueCellFull!15650 (v!19213 V!49203)) (EmptyCell!15650) )
))
(declare-datatypes ((array!83205 0))(
  ( (array!83206 (arr!40135 (Array (_ BitVec 32) ValueCell!15650)) (size!40672 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83205)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!83207 0))(
  ( (array!83208 (arr!40136 (Array (_ BitVec 32) (_ BitVec 64))) (size!40673 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83207)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1271790 (= res!846159 (and (= (size!40672 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40673 _keys!1364) (size!40672 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1271791 () Bool)

(declare-fun res!846158 () Bool)

(assert (=> b!1271791 (=> (not res!846158) (not e!725363))))

(declare-datatypes ((List!28701 0))(
  ( (Nil!28698) (Cons!28697 (h!29906 (_ BitVec 64)) (t!42237 List!28701)) )
))
(declare-fun arrayNoDuplicates!0 (array!83207 (_ BitVec 32) List!28701) Bool)

(assert (=> b!1271791 (= res!846158 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28698))))

(declare-fun res!846161 () Bool)

(assert (=> start!107354 (=> (not res!846161) (not e!725363))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107354 (= res!846161 (validMask!0 mask!1730))))

(assert (=> start!107354 e!725363))

(declare-fun e!725360 () Bool)

(declare-fun array_inv!30465 (array!83205) Bool)

(assert (=> start!107354 (and (array_inv!30465 _values!1134) e!725360)))

(assert (=> start!107354 true))

(declare-fun array_inv!30466 (array!83207) Bool)

(assert (=> start!107354 (array_inv!30466 _keys!1364)))

(declare-fun b!1271792 () Bool)

(assert (=> b!1271792 (= e!725360 (and e!725359 mapRes!51091))))

(declare-fun condMapEmpty!51091 () Bool)

(declare-fun mapDefault!51091 () ValueCell!15650)

