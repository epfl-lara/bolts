; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72756 () Bool)

(assert start!72756)

(declare-fun b!843960 () Bool)

(declare-fun res!573558 () Bool)

(declare-fun e!471026 () Bool)

(assert (=> b!843960 (=> (not res!573558) (not e!471026))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47778 0))(
  ( (array!47779 (arr!22916 (Array (_ BitVec 32) (_ BitVec 64))) (size!23357 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47778)

(declare-datatypes ((V!26085 0))(
  ( (V!26086 (val!7937 Int)) )
))
(declare-datatypes ((ValueCell!7450 0))(
  ( (ValueCellFull!7450 (v!10358 V!26085)) (EmptyCell!7450) )
))
(declare-datatypes ((array!47780 0))(
  ( (array!47781 (arr!22917 (Array (_ BitVec 32) ValueCell!7450)) (size!23358 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47780)

(assert (=> b!843960 (= res!573558 (and (= (size!23358 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23357 _keys!868) (size!23358 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!843961 () Bool)

(declare-fun e!471029 () Bool)

(declare-fun tp_is_empty!15779 () Bool)

(assert (=> b!843961 (= e!471029 tp_is_empty!15779)))

(declare-fun b!843962 () Bool)

(assert (=> b!843962 (= e!471026 false)))

(declare-fun lt!381180 () Bool)

(declare-datatypes ((List!16329 0))(
  ( (Nil!16326) (Cons!16325 (h!17456 (_ BitVec 64)) (t!22708 List!16329)) )
))
(declare-fun arrayNoDuplicates!0 (array!47778 (_ BitVec 32) List!16329) Bool)

(assert (=> b!843962 (= lt!381180 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16326))))

(declare-fun b!843963 () Bool)

(declare-fun e!471027 () Bool)

(assert (=> b!843963 (= e!471027 tp_is_empty!15779)))

(declare-fun mapIsEmpty!25268 () Bool)

(declare-fun mapRes!25268 () Bool)

(assert (=> mapIsEmpty!25268 mapRes!25268))

(declare-fun b!843964 () Bool)

(declare-fun res!573556 () Bool)

(assert (=> b!843964 (=> (not res!573556) (not e!471026))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!843964 (= res!573556 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!25268 () Bool)

(declare-fun tp!48587 () Bool)

(assert (=> mapNonEmpty!25268 (= mapRes!25268 (and tp!48587 e!471029))))

(declare-fun mapRest!25268 () (Array (_ BitVec 32) ValueCell!7450))

(declare-fun mapValue!25268 () ValueCell!7450)

(declare-fun mapKey!25268 () (_ BitVec 32))

(assert (=> mapNonEmpty!25268 (= (arr!22917 _values!688) (store mapRest!25268 mapKey!25268 mapValue!25268))))

(declare-fun b!843965 () Bool)

(declare-fun res!573555 () Bool)

(assert (=> b!843965 (=> (not res!573555) (not e!471026))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47778 (_ BitVec 32)) Bool)

(assert (=> b!843965 (= res!573555 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!843959 () Bool)

(declare-fun e!471028 () Bool)

(assert (=> b!843959 (= e!471028 (and e!471027 mapRes!25268))))

(declare-fun condMapEmpty!25268 () Bool)

(declare-fun mapDefault!25268 () ValueCell!7450)

