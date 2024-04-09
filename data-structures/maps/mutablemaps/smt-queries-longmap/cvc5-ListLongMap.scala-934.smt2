; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20712 () Bool)

(assert start!20712)

(declare-fun b_free!5359 () Bool)

(declare-fun b_next!5359 () Bool)

(assert (=> start!20712 (= b_free!5359 (not b_next!5359))))

(declare-fun tp!19109 () Bool)

(declare-fun b_and!12123 () Bool)

(assert (=> start!20712 (= tp!19109 b_and!12123)))

(declare-fun res!100392 () Bool)

(declare-fun e!135188 () Bool)

(assert (=> start!20712 (=> (not res!100392) (not e!135188))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20712 (= res!100392 (validMask!0 mask!1149))))

(assert (=> start!20712 e!135188))

(declare-datatypes ((V!6601 0))(
  ( (V!6602 (val!2652 Int)) )
))
(declare-datatypes ((ValueCell!2264 0))(
  ( (ValueCellFull!2264 (v!4618 V!6601)) (EmptyCell!2264) )
))
(declare-datatypes ((array!9638 0))(
  ( (array!9639 (arr!4569 (Array (_ BitVec 32) ValueCell!2264)) (size!4894 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9638)

(declare-fun e!135186 () Bool)

(declare-fun array_inv!3013 (array!9638) Bool)

(assert (=> start!20712 (and (array_inv!3013 _values!649) e!135186)))

(assert (=> start!20712 true))

(declare-fun tp_is_empty!5215 () Bool)

(assert (=> start!20712 tp_is_empty!5215))

(declare-datatypes ((array!9640 0))(
  ( (array!9641 (arr!4570 (Array (_ BitVec 32) (_ BitVec 64))) (size!4895 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9640)

(declare-fun array_inv!3014 (array!9640) Bool)

(assert (=> start!20712 (array_inv!3014 _keys!825)))

(assert (=> start!20712 tp!19109))

(declare-fun b!206952 () Bool)

(declare-fun res!100396 () Bool)

(assert (=> b!206952 (=> (not res!100396) (not e!135188))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!206952 (= res!100396 (= (select (arr!4570 _keys!825) i!601) k!843))))

(declare-fun b!206953 () Bool)

(declare-fun res!100395 () Bool)

(assert (=> b!206953 (=> (not res!100395) (not e!135188))))

(assert (=> b!206953 (= res!100395 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4895 _keys!825))))))

(declare-fun b!206954 () Bool)

(declare-fun res!100391 () Bool)

(assert (=> b!206954 (=> (not res!100391) (not e!135188))))

(declare-datatypes ((List!2937 0))(
  ( (Nil!2934) (Cons!2933 (h!3575 (_ BitVec 64)) (t!7876 List!2937)) )
))
(declare-fun arrayNoDuplicates!0 (array!9640 (_ BitVec 32) List!2937) Bool)

(assert (=> b!206954 (= res!100391 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2934))))

(declare-fun b!206955 () Bool)

(declare-fun e!135187 () Bool)

(declare-fun mapRes!8891 () Bool)

(assert (=> b!206955 (= e!135186 (and e!135187 mapRes!8891))))

(declare-fun condMapEmpty!8891 () Bool)

(declare-fun mapDefault!8891 () ValueCell!2264)

