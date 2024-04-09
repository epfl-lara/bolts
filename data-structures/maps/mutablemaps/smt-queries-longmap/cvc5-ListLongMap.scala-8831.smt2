; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107246 () Bool)

(assert start!107246)

(declare-fun b!1270815 () Bool)

(declare-fun e!724549 () Bool)

(declare-fun tp_is_empty!32899 () Bool)

(assert (=> b!1270815 (= e!724549 tp_is_empty!32899)))

(declare-fun b!1270816 () Bool)

(declare-fun e!724550 () Bool)

(assert (=> b!1270816 (= e!724550 false)))

(declare-fun lt!574721 () Bool)

(declare-datatypes ((array!83017 0))(
  ( (array!83018 (arr!40041 (Array (_ BitVec 32) (_ BitVec 64))) (size!40578 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83017)

(declare-datatypes ((List!28668 0))(
  ( (Nil!28665) (Cons!28664 (h!29873 (_ BitVec 64)) (t!42204 List!28668)) )
))
(declare-fun arrayNoDuplicates!0 (array!83017 (_ BitVec 32) List!28668) Bool)

(assert (=> b!1270816 (= lt!574721 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28665))))

(declare-fun b!1270817 () Bool)

(declare-fun res!845671 () Bool)

(assert (=> b!1270817 (=> (not res!845671) (not e!724550))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83017 (_ BitVec 32)) Bool)

(assert (=> b!1270817 (= res!845671 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1270818 () Bool)

(declare-fun e!724551 () Bool)

(declare-fun mapRes!50929 () Bool)

(assert (=> b!1270818 (= e!724551 (and e!724549 mapRes!50929))))

(declare-fun condMapEmpty!50929 () Bool)

(declare-datatypes ((V!49059 0))(
  ( (V!49060 (val!16524 Int)) )
))
(declare-datatypes ((ValueCell!15596 0))(
  ( (ValueCellFull!15596 (v!19159 V!49059)) (EmptyCell!15596) )
))
(declare-datatypes ((array!83019 0))(
  ( (array!83020 (arr!40042 (Array (_ BitVec 32) ValueCell!15596)) (size!40579 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83019)

(declare-fun mapDefault!50929 () ValueCell!15596)

