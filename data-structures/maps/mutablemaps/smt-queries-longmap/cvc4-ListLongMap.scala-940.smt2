; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20752 () Bool)

(assert start!20752)

(declare-fun b_free!5399 () Bool)

(declare-fun b_next!5399 () Bool)

(assert (=> start!20752 (= b_free!5399 (not b_next!5399))))

(declare-fun tp!19228 () Bool)

(declare-fun b_and!12163 () Bool)

(assert (=> start!20752 (= tp!19228 b_and!12163)))

(declare-fun mapNonEmpty!8951 () Bool)

(declare-fun mapRes!8951 () Bool)

(declare-fun tp!19229 () Bool)

(declare-fun e!135489 () Bool)

(assert (=> mapNonEmpty!8951 (= mapRes!8951 (and tp!19229 e!135489))))

(declare-datatypes ((V!6653 0))(
  ( (V!6654 (val!2672 Int)) )
))
(declare-datatypes ((ValueCell!2284 0))(
  ( (ValueCellFull!2284 (v!4638 V!6653)) (EmptyCell!2284) )
))
(declare-fun mapValue!8951 () ValueCell!2284)

(declare-datatypes ((array!9716 0))(
  ( (array!9717 (arr!4608 (Array (_ BitVec 32) ValueCell!2284)) (size!4933 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9716)

(declare-fun mapRest!8951 () (Array (_ BitVec 32) ValueCell!2284))

(declare-fun mapKey!8951 () (_ BitVec 32))

(assert (=> mapNonEmpty!8951 (= (arr!4608 _values!649) (store mapRest!8951 mapKey!8951 mapValue!8951))))

(declare-fun b!207552 () Bool)

(declare-fun res!100811 () Bool)

(declare-fun e!135490 () Bool)

(assert (=> b!207552 (=> (not res!100811) (not e!135490))))

(declare-datatypes ((array!9718 0))(
  ( (array!9719 (arr!4609 (Array (_ BitVec 32) (_ BitVec 64))) (size!4934 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9718)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!207552 (= res!100811 (and (= (size!4933 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4934 _keys!825) (size!4933 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun res!100812 () Bool)

(assert (=> start!20752 (=> (not res!100812) (not e!135490))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20752 (= res!100812 (validMask!0 mask!1149))))

(assert (=> start!20752 e!135490))

(declare-fun e!135487 () Bool)

(declare-fun array_inv!3045 (array!9716) Bool)

(assert (=> start!20752 (and (array_inv!3045 _values!649) e!135487)))

(assert (=> start!20752 true))

(declare-fun tp_is_empty!5255 () Bool)

(assert (=> start!20752 tp_is_empty!5255))

(declare-fun array_inv!3046 (array!9718) Bool)

(assert (=> start!20752 (array_inv!3046 _keys!825)))

(assert (=> start!20752 tp!19228))

(declare-fun b!207553 () Bool)

(declare-fun res!100810 () Bool)

(assert (=> b!207553 (=> (not res!100810) (not e!135490))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9718 (_ BitVec 32)) Bool)

(assert (=> b!207553 (= res!100810 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!207554 () Bool)

(assert (=> b!207554 (= e!135489 tp_is_empty!5255)))

(declare-fun b!207555 () Bool)

(declare-fun res!100816 () Bool)

(assert (=> b!207555 (=> (not res!100816) (not e!135490))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!207555 (= res!100816 (= (select (arr!4609 _keys!825) i!601) k!843))))

(declare-fun mapIsEmpty!8951 () Bool)

(assert (=> mapIsEmpty!8951 mapRes!8951))

(declare-fun b!207556 () Bool)

(declare-fun res!100814 () Bool)

(assert (=> b!207556 (=> (not res!100814) (not e!135490))))

(assert (=> b!207556 (= res!100814 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4934 _keys!825))))))

(declare-fun b!207557 () Bool)

(declare-fun e!135486 () Bool)

(assert (=> b!207557 (= e!135486 tp_is_empty!5255)))

(declare-fun b!207558 () Bool)

(declare-fun res!100813 () Bool)

(assert (=> b!207558 (=> (not res!100813) (not e!135490))))

(declare-datatypes ((List!2968 0))(
  ( (Nil!2965) (Cons!2964 (h!3606 (_ BitVec 64)) (t!7907 List!2968)) )
))
(declare-fun arrayNoDuplicates!0 (array!9718 (_ BitVec 32) List!2968) Bool)

(assert (=> b!207558 (= res!100813 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2965))))

(declare-fun b!207559 () Bool)

(declare-fun res!100815 () Bool)

(assert (=> b!207559 (=> (not res!100815) (not e!135490))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!207559 (= res!100815 (validKeyInArray!0 k!843))))

(declare-fun b!207560 () Bool)

(assert (=> b!207560 (= e!135487 (and e!135486 mapRes!8951))))

(declare-fun condMapEmpty!8951 () Bool)

(declare-fun mapDefault!8951 () ValueCell!2284)

