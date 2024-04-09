; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20154 () Bool)

(assert start!20154)

(declare-fun b_free!4801 () Bool)

(declare-fun b_next!4801 () Bool)

(assert (=> start!20154 (= b_free!4801 (not b_next!4801))))

(declare-fun tp!17435 () Bool)

(declare-fun b_and!11565 () Bool)

(assert (=> start!20154 (= tp!17435 b_and!11565)))

(declare-fun res!93475 () Bool)

(declare-fun e!129968 () Bool)

(assert (=> start!20154 (=> (not res!93475) (not e!129968))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20154 (= res!93475 (validMask!0 mask!1149))))

(assert (=> start!20154 e!129968))

(declare-datatypes ((V!5857 0))(
  ( (V!5858 (val!2373 Int)) )
))
(declare-datatypes ((ValueCell!1985 0))(
  ( (ValueCellFull!1985 (v!4339 V!5857)) (EmptyCell!1985) )
))
(declare-datatypes ((array!8566 0))(
  ( (array!8567 (arr!4033 (Array (_ BitVec 32) ValueCell!1985)) (size!4358 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8566)

(declare-fun e!129970 () Bool)

(declare-fun array_inv!2621 (array!8566) Bool)

(assert (=> start!20154 (and (array_inv!2621 _values!649) e!129970)))

(assert (=> start!20154 true))

(declare-fun tp_is_empty!4657 () Bool)

(assert (=> start!20154 tp_is_empty!4657))

(declare-datatypes ((array!8568 0))(
  ( (array!8569 (arr!4034 (Array (_ BitVec 32) (_ BitVec 64))) (size!4359 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8568)

(declare-fun array_inv!2622 (array!8568) Bool)

(assert (=> start!20154 (array_inv!2622 _keys!825)))

(assert (=> start!20154 tp!17435))

(declare-fun mapNonEmpty!8054 () Bool)

(declare-fun mapRes!8054 () Bool)

(declare-fun tp!17434 () Bool)

(declare-fun e!129966 () Bool)

(assert (=> mapNonEmpty!8054 (= mapRes!8054 (and tp!17434 e!129966))))

(declare-fun mapValue!8054 () ValueCell!1985)

(declare-fun mapRest!8054 () (Array (_ BitVec 32) ValueCell!1985))

(declare-fun mapKey!8054 () (_ BitVec 32))

(assert (=> mapNonEmpty!8054 (= (arr!4033 _values!649) (store mapRest!8054 mapKey!8054 mapValue!8054))))

(declare-fun b!197520 () Bool)

(declare-fun res!93474 () Bool)

(assert (=> b!197520 (=> (not res!93474) (not e!129968))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!197520 (= res!93474 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4359 _keys!825))))))

(declare-fun b!197521 () Bool)

(declare-fun res!93473 () Bool)

(assert (=> b!197521 (=> (not res!93473) (not e!129968))))

(declare-datatypes ((List!2537 0))(
  ( (Nil!2534) (Cons!2533 (h!3175 (_ BitVec 64)) (t!7476 List!2537)) )
))
(declare-fun arrayNoDuplicates!0 (array!8568 (_ BitVec 32) List!2537) Bool)

(assert (=> b!197521 (= res!93473 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2534))))

(declare-fun b!197522 () Bool)

(declare-fun res!93471 () Bool)

(assert (=> b!197522 (=> (not res!93471) (not e!129968))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!197522 (= res!93471 (and (= (size!4358 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4359 _keys!825) (size!4358 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!197523 () Bool)

(assert (=> b!197523 (= e!129966 tp_is_empty!4657)))

(declare-fun b!197524 () Bool)

(declare-fun e!129967 () Bool)

(assert (=> b!197524 (= e!129970 (and e!129967 mapRes!8054))))

(declare-fun condMapEmpty!8054 () Bool)

(declare-fun mapDefault!8054 () ValueCell!1985)

