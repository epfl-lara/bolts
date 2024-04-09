; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84344 () Bool)

(assert start!84344)

(declare-fun b!986194 () Bool)

(declare-fun res!659958 () Bool)

(declare-fun e!556054 () Bool)

(assert (=> b!986194 (=> (not res!659958) (not e!556054))))

(declare-datatypes ((array!62189 0))(
  ( (array!62190 (arr!29948 (Array (_ BitVec 32) (_ BitVec 64))) (size!30428 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62189)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62189 (_ BitVec 32)) Bool)

(assert (=> b!986194 (= res!659958 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!986195 () Bool)

(declare-fun e!556051 () Bool)

(declare-fun tp_is_empty!23119 () Bool)

(assert (=> b!986195 (= e!556051 tp_is_empty!23119)))

(declare-fun b!986196 () Bool)

(declare-fun res!659956 () Bool)

(assert (=> b!986196 (=> (not res!659956) (not e!556054))))

(declare-datatypes ((V!35809 0))(
  ( (V!35810 (val!11610 Int)) )
))
(declare-datatypes ((ValueCell!11078 0))(
  ( (ValueCellFull!11078 (v!14172 V!35809)) (EmptyCell!11078) )
))
(declare-datatypes ((array!62191 0))(
  ( (array!62192 (arr!29949 (Array (_ BitVec 32) ValueCell!11078)) (size!30429 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62191)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!986196 (= res!659956 (and (= (size!30429 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30428 _keys!1544) (size!30429 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!986197 () Bool)

(assert (=> b!986197 (= e!556054 false)))

(declare-fun lt!437419 () Bool)

(declare-datatypes ((List!20851 0))(
  ( (Nil!20848) (Cons!20847 (h!22009 (_ BitVec 64)) (t!29758 List!20851)) )
))
(declare-fun arrayNoDuplicates!0 (array!62189 (_ BitVec 32) List!20851) Bool)

(assert (=> b!986197 (= lt!437419 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20848))))

(declare-fun res!659957 () Bool)

(assert (=> start!84344 (=> (not res!659957) (not e!556054))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84344 (= res!659957 (validMask!0 mask!1948))))

(assert (=> start!84344 e!556054))

(assert (=> start!84344 true))

(declare-fun e!556053 () Bool)

(declare-fun array_inv!23009 (array!62191) Bool)

(assert (=> start!84344 (and (array_inv!23009 _values!1278) e!556053)))

(declare-fun array_inv!23010 (array!62189) Bool)

(assert (=> start!84344 (array_inv!23010 _keys!1544)))

(declare-fun b!986198 () Bool)

(declare-fun e!556052 () Bool)

(assert (=> b!986198 (= e!556052 tp_is_empty!23119)))

(declare-fun mapIsEmpty!36707 () Bool)

(declare-fun mapRes!36707 () Bool)

(assert (=> mapIsEmpty!36707 mapRes!36707))

(declare-fun b!986199 () Bool)

(assert (=> b!986199 (= e!556053 (and e!556052 mapRes!36707))))

(declare-fun condMapEmpty!36707 () Bool)

(declare-fun mapDefault!36707 () ValueCell!11078)

