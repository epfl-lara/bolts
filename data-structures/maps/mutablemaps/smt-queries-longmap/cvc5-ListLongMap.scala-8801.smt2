; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107066 () Bool)

(assert start!107066)

(declare-fun b!1268871 () Bool)

(declare-fun e!723201 () Bool)

(declare-fun tp_is_empty!32719 () Bool)

(assert (=> b!1268871 (= e!723201 tp_is_empty!32719)))

(declare-fun b!1268872 () Bool)

(declare-fun e!723203 () Bool)

(assert (=> b!1268872 (= e!723203 false)))

(declare-fun lt!574451 () Bool)

(declare-datatypes ((array!82681 0))(
  ( (array!82682 (arr!39873 (Array (_ BitVec 32) (_ BitVec 64))) (size!40410 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82681)

(declare-datatypes ((List!28577 0))(
  ( (Nil!28574) (Cons!28573 (h!29782 (_ BitVec 64)) (t!42113 List!28577)) )
))
(declare-fun arrayNoDuplicates!0 (array!82681 (_ BitVec 32) List!28577) Bool)

(assert (=> b!1268872 (= lt!574451 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28574))))

(declare-fun res!844538 () Bool)

(assert (=> start!107066 (=> (not res!844538) (not e!723203))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107066 (= res!844538 (validMask!0 mask!1730))))

(assert (=> start!107066 e!723203))

(declare-datatypes ((V!48819 0))(
  ( (V!48820 (val!16434 Int)) )
))
(declare-datatypes ((ValueCell!15506 0))(
  ( (ValueCellFull!15506 (v!19069 V!48819)) (EmptyCell!15506) )
))
(declare-datatypes ((array!82683 0))(
  ( (array!82684 (arr!39874 (Array (_ BitVec 32) ValueCell!15506)) (size!40411 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82683)

(declare-fun e!723202 () Bool)

(declare-fun array_inv!30299 (array!82683) Bool)

(assert (=> start!107066 (and (array_inv!30299 _values!1134) e!723202)))

(assert (=> start!107066 true))

(declare-fun array_inv!30300 (array!82681) Bool)

(assert (=> start!107066 (array_inv!30300 _keys!1364)))

(declare-fun b!1268873 () Bool)

(declare-fun e!723199 () Bool)

(assert (=> b!1268873 (= e!723199 tp_is_empty!32719)))

(declare-fun mapNonEmpty!50659 () Bool)

(declare-fun mapRes!50659 () Bool)

(declare-fun tp!96839 () Bool)

(assert (=> mapNonEmpty!50659 (= mapRes!50659 (and tp!96839 e!723199))))

(declare-fun mapKey!50659 () (_ BitVec 32))

(declare-fun mapValue!50659 () ValueCell!15506)

(declare-fun mapRest!50659 () (Array (_ BitVec 32) ValueCell!15506))

(assert (=> mapNonEmpty!50659 (= (arr!39874 _values!1134) (store mapRest!50659 mapKey!50659 mapValue!50659))))

(declare-fun b!1268874 () Bool)

(declare-fun res!844536 () Bool)

(assert (=> b!1268874 (=> (not res!844536) (not e!723203))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82681 (_ BitVec 32)) Bool)

(assert (=> b!1268874 (= res!844536 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1268875 () Bool)

(declare-fun res!844537 () Bool)

(assert (=> b!1268875 (=> (not res!844537) (not e!723203))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1268875 (= res!844537 (and (= (size!40411 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40410 _keys!1364) (size!40411 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1268876 () Bool)

(assert (=> b!1268876 (= e!723202 (and e!723201 mapRes!50659))))

(declare-fun condMapEmpty!50659 () Bool)

(declare-fun mapDefault!50659 () ValueCell!15506)

