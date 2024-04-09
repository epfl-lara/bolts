; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20074 () Bool)

(assert start!20074)

(declare-fun b!196405 () Bool)

(declare-fun e!129368 () Bool)

(assert (=> b!196405 (= e!129368 false)))

(declare-fun lt!97642 () Bool)

(declare-datatypes ((array!8410 0))(
  ( (array!8411 (arr!3955 (Array (_ BitVec 32) (_ BitVec 64))) (size!4280 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8410)

(declare-datatypes ((List!2493 0))(
  ( (Nil!2490) (Cons!2489 (h!3131 (_ BitVec 64)) (t!7432 List!2493)) )
))
(declare-fun arrayNoDuplicates!0 (array!8410 (_ BitVec 32) List!2493) Bool)

(assert (=> b!196405 (= lt!97642 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2490))))

(declare-fun b!196406 () Bool)

(declare-fun e!129370 () Bool)

(declare-fun tp_is_empty!4577 () Bool)

(assert (=> b!196406 (= e!129370 tp_is_empty!4577)))

(declare-fun b!196407 () Bool)

(declare-fun res!92715 () Bool)

(assert (=> b!196407 (=> (not res!92715) (not e!129368))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8410 (_ BitVec 32)) Bool)

(assert (=> b!196407 (= res!92715 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun res!92716 () Bool)

(assert (=> start!20074 (=> (not res!92716) (not e!129368))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20074 (= res!92716 (validMask!0 mask!1149))))

(assert (=> start!20074 e!129368))

(assert (=> start!20074 true))

(declare-datatypes ((V!5749 0))(
  ( (V!5750 (val!2333 Int)) )
))
(declare-datatypes ((ValueCell!1945 0))(
  ( (ValueCellFull!1945 (v!4299 V!5749)) (EmptyCell!1945) )
))
(declare-datatypes ((array!8412 0))(
  ( (array!8413 (arr!3956 (Array (_ BitVec 32) ValueCell!1945)) (size!4281 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8412)

(declare-fun e!129367 () Bool)

(declare-fun array_inv!2565 (array!8412) Bool)

(assert (=> start!20074 (and (array_inv!2565 _values!649) e!129367)))

(declare-fun array_inv!2566 (array!8410) Bool)

(assert (=> start!20074 (array_inv!2566 _keys!825)))

(declare-fun b!196408 () Bool)

(declare-fun e!129369 () Bool)

(declare-fun mapRes!7934 () Bool)

(assert (=> b!196408 (= e!129367 (and e!129369 mapRes!7934))))

(declare-fun condMapEmpty!7934 () Bool)

(declare-fun mapDefault!7934 () ValueCell!1945)

