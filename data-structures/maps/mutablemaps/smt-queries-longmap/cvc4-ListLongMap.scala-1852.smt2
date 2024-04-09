; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33492 () Bool)

(assert start!33492)

(declare-fun mapIsEmpty!11490 () Bool)

(declare-fun mapRes!11490 () Bool)

(assert (=> mapIsEmpty!11490 mapRes!11490))

(declare-fun b!332140 () Bool)

(declare-fun e!203955 () Bool)

(declare-fun tp_is_empty!6737 () Bool)

(assert (=> b!332140 (= e!203955 tp_is_empty!6737)))

(declare-fun b!332141 () Bool)

(declare-fun res!183040 () Bool)

(declare-fun e!203954 () Bool)

(assert (=> b!332141 (=> (not res!183040) (not e!203954))))

(declare-datatypes ((array!17067 0))(
  ( (array!17068 (arr!8065 (Array (_ BitVec 32) (_ BitVec 64))) (size!8417 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17067)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17067 (_ BitVec 32)) Bool)

(assert (=> b!332141 (= res!183040 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!332142 () Bool)

(declare-fun e!203952 () Bool)

(declare-fun e!203953 () Bool)

(assert (=> b!332142 (= e!203952 (and e!203953 mapRes!11490))))

(declare-fun condMapEmpty!11490 () Bool)

(declare-datatypes ((V!9959 0))(
  ( (V!9960 (val!3413 Int)) )
))
(declare-datatypes ((ValueCell!3025 0))(
  ( (ValueCellFull!3025 (v!5568 V!9959)) (EmptyCell!3025) )
))
(declare-datatypes ((array!17069 0))(
  ( (array!17070 (arr!8066 (Array (_ BitVec 32) ValueCell!3025)) (size!8418 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17069)

(declare-fun mapDefault!11490 () ValueCell!3025)

