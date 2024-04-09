; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107058 () Bool)

(assert start!107058)

(declare-fun mapIsEmpty!50647 () Bool)

(declare-fun mapRes!50647 () Bool)

(assert (=> mapIsEmpty!50647 mapRes!50647))

(declare-fun b!1268799 () Bool)

(declare-fun e!723142 () Bool)

(declare-fun tp_is_empty!32711 () Bool)

(assert (=> b!1268799 (= e!723142 tp_is_empty!32711)))

(declare-fun b!1268800 () Bool)

(declare-fun res!844502 () Bool)

(declare-fun e!723143 () Bool)

(assert (=> b!1268800 (=> (not res!844502) (not e!723143))))

(declare-datatypes ((V!48807 0))(
  ( (V!48808 (val!16430 Int)) )
))
(declare-datatypes ((ValueCell!15502 0))(
  ( (ValueCellFull!15502 (v!19065 V!48807)) (EmptyCell!15502) )
))
(declare-datatypes ((array!82665 0))(
  ( (array!82666 (arr!39865 (Array (_ BitVec 32) ValueCell!15502)) (size!40402 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82665)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82667 0))(
  ( (array!82668 (arr!39866 (Array (_ BitVec 32) (_ BitVec 64))) (size!40403 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82667)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1268800 (= res!844502 (and (= (size!40402 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40403 _keys!1364) (size!40402 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1268801 () Bool)

(declare-fun e!723141 () Bool)

(assert (=> b!1268801 (= e!723141 tp_is_empty!32711)))

(declare-fun b!1268802 () Bool)

(assert (=> b!1268802 (= e!723143 false)))

(declare-fun lt!574439 () Bool)

(declare-datatypes ((List!28573 0))(
  ( (Nil!28570) (Cons!28569 (h!29778 (_ BitVec 64)) (t!42109 List!28573)) )
))
(declare-fun arrayNoDuplicates!0 (array!82667 (_ BitVec 32) List!28573) Bool)

(assert (=> b!1268802 (= lt!574439 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28570))))

(declare-fun b!1268803 () Bool)

(declare-fun e!723139 () Bool)

(assert (=> b!1268803 (= e!723139 (and e!723142 mapRes!50647))))

(declare-fun condMapEmpty!50647 () Bool)

(declare-fun mapDefault!50647 () ValueCell!15502)

