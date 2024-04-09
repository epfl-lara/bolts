; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84146 () Bool)

(assert start!84146)

(declare-fun b!983404 () Bool)

(declare-fun e!554404 () Bool)

(assert (=> b!983404 (= e!554404 false)))

(declare-fun lt!436483 () Bool)

(declare-datatypes ((array!61815 0))(
  ( (array!61816 (arr!29761 (Array (_ BitVec 32) (_ BitVec 64))) (size!30241 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61815)

(declare-datatypes ((List!20746 0))(
  ( (Nil!20743) (Cons!20742 (h!21904 (_ BitVec 64)) (t!29545 List!20746)) )
))
(declare-fun arrayNoDuplicates!0 (array!61815 (_ BitVec 32) List!20746) Bool)

(assert (=> b!983404 (= lt!436483 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20743))))

(declare-fun mapNonEmpty!36410 () Bool)

(declare-fun mapRes!36410 () Bool)

(declare-fun tp!69095 () Bool)

(declare-fun e!554405 () Bool)

(assert (=> mapNonEmpty!36410 (= mapRes!36410 (and tp!69095 e!554405))))

(declare-datatypes ((V!35545 0))(
  ( (V!35546 (val!11511 Int)) )
))
(declare-datatypes ((ValueCell!10979 0))(
  ( (ValueCellFull!10979 (v!14073 V!35545)) (EmptyCell!10979) )
))
(declare-datatypes ((array!61817 0))(
  ( (array!61818 (arr!29762 (Array (_ BitVec 32) ValueCell!10979)) (size!30242 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61817)

(declare-fun mapValue!36410 () ValueCell!10979)

(declare-fun mapKey!36410 () (_ BitVec 32))

(declare-fun mapRest!36410 () (Array (_ BitVec 32) ValueCell!10979))

(assert (=> mapNonEmpty!36410 (= (arr!29762 _values!1278) (store mapRest!36410 mapKey!36410 mapValue!36410))))

(declare-fun b!983405 () Bool)

(declare-fun tp_is_empty!22921 () Bool)

(assert (=> b!983405 (= e!554405 tp_is_empty!22921)))

(declare-fun b!983406 () Bool)

(declare-fun e!554408 () Bool)

(assert (=> b!983406 (= e!554408 tp_is_empty!22921)))

(declare-fun b!983407 () Bool)

(declare-fun res!658166 () Bool)

(assert (=> b!983407 (=> (not res!658166) (not e!554404))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61815 (_ BitVec 32)) Bool)

(assert (=> b!983407 (= res!658166 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!983408 () Bool)

(declare-fun res!658165 () Bool)

(assert (=> b!983408 (=> (not res!658165) (not e!554404))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!983408 (= res!658165 (and (= (size!30242 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30241 _keys!1544) (size!30242 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!983409 () Bool)

(declare-fun e!554406 () Bool)

(assert (=> b!983409 (= e!554406 (and e!554408 mapRes!36410))))

(declare-fun condMapEmpty!36410 () Bool)

(declare-fun mapDefault!36410 () ValueCell!10979)

