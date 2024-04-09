; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41974 () Bool)

(assert start!41974)

(declare-fun b_free!11539 () Bool)

(declare-fun b_next!11539 () Bool)

(assert (=> start!41974 (= b_free!11539 (not b_next!11539))))

(declare-fun tp!40633 () Bool)

(declare-fun b_and!19955 () Bool)

(assert (=> start!41974 (= tp!40633 b_and!19955)))

(declare-fun mapIsEmpty!21145 () Bool)

(declare-fun mapRes!21145 () Bool)

(assert (=> mapIsEmpty!21145 mapRes!21145))

(declare-fun res!279941 () Bool)

(declare-fun e!274107 () Bool)

(assert (=> start!41974 (=> (not res!279941) (not e!274107))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41974 (= res!279941 (validMask!0 mask!1365))))

(assert (=> start!41974 e!274107))

(declare-fun tp_is_empty!12967 () Bool)

(assert (=> start!41974 tp_is_empty!12967))

(assert (=> start!41974 tp!40633))

(assert (=> start!41974 true))

(declare-datatypes ((array!29667 0))(
  ( (array!29668 (arr!14256 (Array (_ BitVec 32) (_ BitVec 64))) (size!14608 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29667)

(declare-fun array_inv!10280 (array!29667) Bool)

(assert (=> start!41974 (array_inv!10280 _keys!1025)))

(declare-datatypes ((V!18395 0))(
  ( (V!18396 (val!6528 Int)) )
))
(declare-datatypes ((ValueCell!6140 0))(
  ( (ValueCellFull!6140 (v!8813 V!18395)) (EmptyCell!6140) )
))
(declare-datatypes ((array!29669 0))(
  ( (array!29670 (arr!14257 (Array (_ BitVec 32) ValueCell!6140)) (size!14609 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29669)

(declare-fun e!274105 () Bool)

(declare-fun array_inv!10281 (array!29669) Bool)

(assert (=> start!41974 (and (array_inv!10281 _values!833) e!274105)))

(declare-fun b!468327 () Bool)

(declare-fun res!279940 () Bool)

(assert (=> b!468327 (=> (not res!279940) (not e!274107))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!468327 (= res!279940 (and (= (size!14609 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14608 _keys!1025) (size!14609 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!468328 () Bool)

(declare-fun e!274109 () Bool)

(assert (=> b!468328 (= e!274105 (and e!274109 mapRes!21145))))

(declare-fun condMapEmpty!21145 () Bool)

(declare-fun mapDefault!21145 () ValueCell!6140)

