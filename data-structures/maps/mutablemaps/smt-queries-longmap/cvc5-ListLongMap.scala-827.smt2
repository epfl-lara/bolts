; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20070 () Bool)

(assert start!20070)

(declare-fun res!92696 () Bool)

(declare-fun e!129338 () Bool)

(assert (=> start!20070 (=> (not res!92696) (not e!129338))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20070 (= res!92696 (validMask!0 mask!1149))))

(assert (=> start!20070 e!129338))

(assert (=> start!20070 true))

(declare-datatypes ((V!5745 0))(
  ( (V!5746 (val!2331 Int)) )
))
(declare-datatypes ((ValueCell!1943 0))(
  ( (ValueCellFull!1943 (v!4297 V!5745)) (EmptyCell!1943) )
))
(declare-datatypes ((array!8402 0))(
  ( (array!8403 (arr!3951 (Array (_ BitVec 32) ValueCell!1943)) (size!4276 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8402)

(declare-fun e!129336 () Bool)

(declare-fun array_inv!2561 (array!8402) Bool)

(assert (=> start!20070 (and (array_inv!2561 _values!649) e!129336)))

(declare-datatypes ((array!8404 0))(
  ( (array!8405 (arr!3952 (Array (_ BitVec 32) (_ BitVec 64))) (size!4277 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8404)

(declare-fun array_inv!2562 (array!8404) Bool)

(assert (=> start!20070 (array_inv!2562 _keys!825)))

(declare-fun b!196369 () Bool)

(declare-fun e!129339 () Bool)

(declare-fun tp_is_empty!4573 () Bool)

(assert (=> b!196369 (= e!129339 tp_is_empty!4573)))

(declare-fun b!196370 () Bool)

(assert (=> b!196370 (= e!129338 false)))

(declare-fun lt!97636 () Bool)

(declare-datatypes ((List!2491 0))(
  ( (Nil!2488) (Cons!2487 (h!3129 (_ BitVec 64)) (t!7430 List!2491)) )
))
(declare-fun arrayNoDuplicates!0 (array!8404 (_ BitVec 32) List!2491) Bool)

(assert (=> b!196370 (= lt!97636 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2488))))

(declare-fun b!196371 () Bool)

(declare-fun res!92698 () Bool)

(assert (=> b!196371 (=> (not res!92698) (not e!129338))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!196371 (= res!92698 (and (= (size!4276 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4277 _keys!825) (size!4276 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!196372 () Bool)

(declare-fun e!129340 () Bool)

(assert (=> b!196372 (= e!129340 tp_is_empty!4573)))

(declare-fun mapNonEmpty!7928 () Bool)

(declare-fun mapRes!7928 () Bool)

(declare-fun tp!17216 () Bool)

(assert (=> mapNonEmpty!7928 (= mapRes!7928 (and tp!17216 e!129340))))

(declare-fun mapKey!7928 () (_ BitVec 32))

(declare-fun mapRest!7928 () (Array (_ BitVec 32) ValueCell!1943))

(declare-fun mapValue!7928 () ValueCell!1943)

(assert (=> mapNonEmpty!7928 (= (arr!3951 _values!649) (store mapRest!7928 mapKey!7928 mapValue!7928))))

(declare-fun b!196373 () Bool)

(assert (=> b!196373 (= e!129336 (and e!129339 mapRes!7928))))

(declare-fun condMapEmpty!7928 () Bool)

(declare-fun mapDefault!7928 () ValueCell!1943)

