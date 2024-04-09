; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41454 () Bool)

(assert start!41454)

(declare-fun b_free!11125 () Bool)

(declare-fun b_next!11125 () Bool)

(assert (=> start!41454 (= b_free!11125 (not b_next!11125))))

(declare-fun tp!39370 () Bool)

(declare-fun b_and!19479 () Bool)

(assert (=> start!41454 (= tp!39370 b_and!19479)))

(declare-fun b!462891 () Bool)

(declare-fun res!276872 () Bool)

(declare-fun e!270232 () Bool)

(assert (=> b!462891 (=> (not res!276872) (not e!270232))))

(declare-datatypes ((array!28867 0))(
  ( (array!28868 (arr!13863 (Array (_ BitVec 32) (_ BitVec 64))) (size!14215 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28867)

(declare-datatypes ((List!8378 0))(
  ( (Nil!8375) (Cons!8374 (h!9230 (_ BitVec 64)) (t!14330 List!8378)) )
))
(declare-fun arrayNoDuplicates!0 (array!28867 (_ BitVec 32) List!8378) Bool)

(assert (=> b!462891 (= res!276872 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8375))))

(declare-fun b!462892 () Bool)

(declare-fun e!270230 () Bool)

(declare-fun tp_is_empty!12553 () Bool)

(assert (=> b!462892 (= e!270230 tp_is_empty!12553)))

(declare-fun res!276871 () Bool)

(assert (=> start!41454 (=> (not res!276871) (not e!270232))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41454 (= res!276871 (validMask!0 mask!1365))))

(assert (=> start!41454 e!270232))

(assert (=> start!41454 tp_is_empty!12553))

(assert (=> start!41454 tp!39370))

(assert (=> start!41454 true))

(declare-fun array_inv!10002 (array!28867) Bool)

(assert (=> start!41454 (array_inv!10002 _keys!1025)))

(declare-datatypes ((V!17843 0))(
  ( (V!17844 (val!6321 Int)) )
))
(declare-datatypes ((ValueCell!5933 0))(
  ( (ValueCellFull!5933 (v!8604 V!17843)) (EmptyCell!5933) )
))
(declare-datatypes ((array!28869 0))(
  ( (array!28870 (arr!13864 (Array (_ BitVec 32) ValueCell!5933)) (size!14216 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28869)

(declare-fun e!270231 () Bool)

(declare-fun array_inv!10003 (array!28869) Bool)

(assert (=> start!41454 (and (array_inv!10003 _values!833) e!270231)))

(declare-fun b!462893 () Bool)

(declare-fun e!270228 () Bool)

(assert (=> b!462893 (= e!270228 tp_is_empty!12553)))

(declare-fun b!462894 () Bool)

(assert (=> b!462894 (= e!270232 false)))

(declare-fun minValueBefore!38 () V!17843)

(declare-fun zeroValue!794 () V!17843)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((tuple2!8250 0))(
  ( (tuple2!8251 (_1!4135 (_ BitVec 64)) (_2!4135 V!17843)) )
))
(declare-datatypes ((List!8379 0))(
  ( (Nil!8376) (Cons!8375 (h!9231 tuple2!8250) (t!14331 List!8379)) )
))
(declare-datatypes ((ListLongMap!7177 0))(
  ( (ListLongMap!7178 (toList!3604 List!8379)) )
))
(declare-fun lt!209265 () ListLongMap!7177)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1772 (array!28867 array!28869 (_ BitVec 32) (_ BitVec 32) V!17843 V!17843 (_ BitVec 32) Int) ListLongMap!7177)

(assert (=> b!462894 (= lt!209265 (getCurrentListMapNoExtraKeys!1772 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!462895 () Bool)

(declare-fun res!276869 () Bool)

(assert (=> b!462895 (=> (not res!276869) (not e!270232))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28867 (_ BitVec 32)) Bool)

(assert (=> b!462895 (= res!276869 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!462896 () Bool)

(declare-fun res!276870 () Bool)

(assert (=> b!462896 (=> (not res!276870) (not e!270232))))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!462896 (= res!276870 (and (= (size!14216 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14215 _keys!1025) (size!14216 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!462897 () Bool)

(declare-fun mapRes!20503 () Bool)

(assert (=> b!462897 (= e!270231 (and e!270228 mapRes!20503))))

(declare-fun condMapEmpty!20503 () Bool)

(declare-fun mapDefault!20503 () ValueCell!5933)

