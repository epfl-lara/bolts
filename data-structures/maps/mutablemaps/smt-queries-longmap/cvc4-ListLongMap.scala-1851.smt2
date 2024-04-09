; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33486 () Bool)

(assert start!33486)

(declare-fun b!332086 () Bool)

(declare-fun e!203907 () Bool)

(declare-fun tp_is_empty!6731 () Bool)

(assert (=> b!332086 (= e!203907 tp_is_empty!6731)))

(declare-fun mapIsEmpty!11481 () Bool)

(declare-fun mapRes!11481 () Bool)

(assert (=> mapIsEmpty!11481 mapRes!11481))

(declare-fun res!183013 () Bool)

(declare-fun e!203910 () Bool)

(assert (=> start!33486 (=> (not res!183013) (not e!203910))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33486 (= res!183013 (validMask!0 mask!2385))))

(assert (=> start!33486 e!203910))

(assert (=> start!33486 true))

(declare-datatypes ((V!9951 0))(
  ( (V!9952 (val!3410 Int)) )
))
(declare-datatypes ((ValueCell!3022 0))(
  ( (ValueCellFull!3022 (v!5565 V!9951)) (EmptyCell!3022) )
))
(declare-datatypes ((array!17057 0))(
  ( (array!17058 (arr!8060 (Array (_ BitVec 32) ValueCell!3022)) (size!8412 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17057)

(declare-fun e!203908 () Bool)

(declare-fun array_inv!5994 (array!17057) Bool)

(assert (=> start!33486 (and (array_inv!5994 _values!1525) e!203908)))

(declare-datatypes ((array!17059 0))(
  ( (array!17060 (arr!8061 (Array (_ BitVec 32) (_ BitVec 64))) (size!8413 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17059)

(declare-fun array_inv!5995 (array!17059) Bool)

(assert (=> start!33486 (array_inv!5995 _keys!1895)))

(declare-fun b!332087 () Bool)

(declare-fun res!183014 () Bool)

(assert (=> b!332087 (=> (not res!183014) (not e!203910))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!332087 (= res!183014 (and (= (size!8412 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8413 _keys!1895) (size!8412 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!332088 () Bool)

(declare-fun e!203906 () Bool)

(assert (=> b!332088 (= e!203906 tp_is_empty!6731)))

(declare-fun mapNonEmpty!11481 () Bool)

(declare-fun tp!23856 () Bool)

(assert (=> mapNonEmpty!11481 (= mapRes!11481 (and tp!23856 e!203906))))

(declare-fun mapValue!11481 () ValueCell!3022)

(declare-fun mapRest!11481 () (Array (_ BitVec 32) ValueCell!3022))

(declare-fun mapKey!11481 () (_ BitVec 32))

(assert (=> mapNonEmpty!11481 (= (arr!8060 _values!1525) (store mapRest!11481 mapKey!11481 mapValue!11481))))

(declare-fun b!332089 () Bool)

(declare-fun res!183012 () Bool)

(assert (=> b!332089 (=> (not res!183012) (not e!203910))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17059 (_ BitVec 32)) Bool)

(assert (=> b!332089 (= res!183012 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!332090 () Bool)

(assert (=> b!332090 (= e!203908 (and e!203907 mapRes!11481))))

(declare-fun condMapEmpty!11481 () Bool)

(declare-fun mapDefault!11481 () ValueCell!3022)

