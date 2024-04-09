; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33498 () Bool)

(assert start!33498)

(declare-fun res!183066 () Bool)

(declare-fun e!203997 () Bool)

(assert (=> start!33498 (=> (not res!183066) (not e!203997))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33498 (= res!183066 (validMask!0 mask!2385))))

(assert (=> start!33498 e!203997))

(assert (=> start!33498 true))

(declare-datatypes ((V!9967 0))(
  ( (V!9968 (val!3416 Int)) )
))
(declare-datatypes ((ValueCell!3028 0))(
  ( (ValueCellFull!3028 (v!5571 V!9967)) (EmptyCell!3028) )
))
(declare-datatypes ((array!17079 0))(
  ( (array!17080 (arr!8071 (Array (_ BitVec 32) ValueCell!3028)) (size!8423 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17079)

(declare-fun e!203998 () Bool)

(declare-fun array_inv!6002 (array!17079) Bool)

(assert (=> start!33498 (and (array_inv!6002 _values!1525) e!203998)))

(declare-datatypes ((array!17081 0))(
  ( (array!17082 (arr!8072 (Array (_ BitVec 32) (_ BitVec 64))) (size!8424 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17081)

(declare-fun array_inv!6003 (array!17081) Bool)

(assert (=> start!33498 (array_inv!6003 _keys!1895)))

(declare-fun b!332194 () Bool)

(declare-fun e!203999 () Bool)

(declare-fun tp_is_empty!6743 () Bool)

(assert (=> b!332194 (= e!203999 tp_is_empty!6743)))

(declare-fun b!332195 () Bool)

(declare-fun res!183067 () Bool)

(assert (=> b!332195 (=> (not res!183067) (not e!203997))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17081 (_ BitVec 32)) Bool)

(assert (=> b!332195 (= res!183067 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!332196 () Bool)

(declare-fun res!183068 () Bool)

(assert (=> b!332196 (=> (not res!183068) (not e!203997))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!332196 (= res!183068 (and (= (size!8423 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8424 _keys!1895) (size!8423 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!11499 () Bool)

(declare-fun mapRes!11499 () Bool)

(assert (=> mapIsEmpty!11499 mapRes!11499))

(declare-fun b!332197 () Bool)

(assert (=> b!332197 (= e!203997 false)))

(declare-fun lt!158970 () Bool)

(declare-datatypes ((List!4614 0))(
  ( (Nil!4611) (Cons!4610 (h!5466 (_ BitVec 64)) (t!9704 List!4614)) )
))
(declare-fun arrayNoDuplicates!0 (array!17081 (_ BitVec 32) List!4614) Bool)

(assert (=> b!332197 (= lt!158970 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4611))))

(declare-fun mapNonEmpty!11499 () Bool)

(declare-fun tp!23874 () Bool)

(declare-fun e!203996 () Bool)

(assert (=> mapNonEmpty!11499 (= mapRes!11499 (and tp!23874 e!203996))))

(declare-fun mapValue!11499 () ValueCell!3028)

(declare-fun mapKey!11499 () (_ BitVec 32))

(declare-fun mapRest!11499 () (Array (_ BitVec 32) ValueCell!3028))

(assert (=> mapNonEmpty!11499 (= (arr!8071 _values!1525) (store mapRest!11499 mapKey!11499 mapValue!11499))))

(declare-fun b!332198 () Bool)

(assert (=> b!332198 (= e!203996 tp_is_empty!6743)))

(declare-fun b!332199 () Bool)

(assert (=> b!332199 (= e!203998 (and e!203999 mapRes!11499))))

(declare-fun condMapEmpty!11499 () Bool)

(declare-fun mapDefault!11499 () ValueCell!3028)

