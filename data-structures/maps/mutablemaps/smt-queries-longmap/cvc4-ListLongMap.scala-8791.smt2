; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107010 () Bool)

(assert start!107010)

(declare-fun b!1268367 () Bool)

(declare-fun res!844286 () Bool)

(declare-fun e!722781 () Bool)

(assert (=> b!1268367 (=> (not res!844286) (not e!722781))))

(declare-datatypes ((V!48743 0))(
  ( (V!48744 (val!16406 Int)) )
))
(declare-datatypes ((ValueCell!15478 0))(
  ( (ValueCellFull!15478 (v!19041 V!48743)) (EmptyCell!15478) )
))
(declare-datatypes ((array!82577 0))(
  ( (array!82578 (arr!39821 (Array (_ BitVec 32) ValueCell!15478)) (size!40358 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82577)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82579 0))(
  ( (array!82580 (arr!39822 (Array (_ BitVec 32) (_ BitVec 64))) (size!40359 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82579)

(assert (=> b!1268367 (= res!844286 (and (= (size!40358 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40359 _keys!1364) (size!40358 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1268368 () Bool)

(declare-fun e!722779 () Bool)

(declare-fun tp_is_empty!32663 () Bool)

(assert (=> b!1268368 (= e!722779 tp_is_empty!32663)))

(declare-fun b!1268369 () Bool)

(declare-fun e!722780 () Bool)

(assert (=> b!1268369 (= e!722780 tp_is_empty!32663)))

(declare-fun b!1268370 () Bool)

(assert (=> b!1268370 (= e!722781 false)))

(declare-fun lt!574367 () Bool)

(declare-datatypes ((List!28559 0))(
  ( (Nil!28556) (Cons!28555 (h!29764 (_ BitVec 64)) (t!42095 List!28559)) )
))
(declare-fun arrayNoDuplicates!0 (array!82579 (_ BitVec 32) List!28559) Bool)

(assert (=> b!1268370 (= lt!574367 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28556))))

(declare-fun b!1268371 () Bool)

(declare-fun res!844285 () Bool)

(assert (=> b!1268371 (=> (not res!844285) (not e!722781))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82579 (_ BitVec 32)) Bool)

(assert (=> b!1268371 (= res!844285 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1268372 () Bool)

(declare-fun e!722783 () Bool)

(declare-fun mapRes!50575 () Bool)

(assert (=> b!1268372 (= e!722783 (and e!722780 mapRes!50575))))

(declare-fun condMapEmpty!50575 () Bool)

(declare-fun mapDefault!50575 () ValueCell!15478)

