; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20818 () Bool)

(assert start!20818)

(declare-fun b_free!5459 () Bool)

(declare-fun b_next!5459 () Bool)

(assert (=> start!20818 (= b_free!5459 (not b_next!5459))))

(declare-fun tp!19418 () Bool)

(declare-fun b_and!12223 () Bool)

(assert (=> start!20818 (= tp!19418 b_and!12223)))

(declare-fun b!208506 () Bool)

(declare-fun res!101469 () Bool)

(declare-fun e!135984 () Bool)

(assert (=> b!208506 (=> (not res!101469) (not e!135984))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!208506 (= res!101469 (validKeyInArray!0 k!843))))

(declare-fun b!208507 () Bool)

(declare-fun res!101473 () Bool)

(assert (=> b!208507 (=> (not res!101473) (not e!135984))))

(declare-datatypes ((array!9844 0))(
  ( (array!9845 (arr!4672 (Array (_ BitVec 32) (_ BitVec 64))) (size!4997 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9844)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9844 (_ BitVec 32)) Bool)

(assert (=> b!208507 (= res!101473 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!208508 () Bool)

(declare-fun res!101471 () Bool)

(assert (=> b!208508 (=> (not res!101471) (not e!135984))))

(declare-datatypes ((List!3015 0))(
  ( (Nil!3012) (Cons!3011 (h!3653 (_ BitVec 64)) (t!7954 List!3015)) )
))
(declare-fun arrayNoDuplicates!0 (array!9844 (_ BitVec 32) List!3015) Bool)

(assert (=> b!208508 (= res!101471 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3012))))

(declare-fun b!208509 () Bool)

(declare-fun e!135982 () Bool)

(declare-fun tp_is_empty!5321 () Bool)

(assert (=> b!208509 (= e!135982 tp_is_empty!5321)))

(declare-fun b!208510 () Bool)

(declare-fun res!101470 () Bool)

(assert (=> b!208510 (=> (not res!101470) (not e!135984))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!208510 (= res!101470 (= (select (arr!4672 _keys!825) i!601) k!843))))

(declare-fun b!208511 () Bool)

(declare-fun res!101467 () Bool)

(assert (=> b!208511 (=> (not res!101467) (not e!135984))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6741 0))(
  ( (V!6742 (val!2705 Int)) )
))
(declare-datatypes ((ValueCell!2317 0))(
  ( (ValueCellFull!2317 (v!4671 V!6741)) (EmptyCell!2317) )
))
(declare-datatypes ((array!9846 0))(
  ( (array!9847 (arr!4673 (Array (_ BitVec 32) ValueCell!2317)) (size!4998 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9846)

(assert (=> b!208511 (= res!101467 (and (= (size!4998 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4997 _keys!825) (size!4998 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!208512 () Bool)

(declare-fun e!135985 () Bool)

(assert (=> b!208512 (= e!135985 tp_is_empty!5321)))

(declare-fun mapNonEmpty!9050 () Bool)

(declare-fun mapRes!9050 () Bool)

(declare-fun tp!19417 () Bool)

(assert (=> mapNonEmpty!9050 (= mapRes!9050 (and tp!19417 e!135982))))

(declare-fun mapValue!9050 () ValueCell!2317)

(declare-fun mapRest!9050 () (Array (_ BitVec 32) ValueCell!2317))

(declare-fun mapKey!9050 () (_ BitVec 32))

(assert (=> mapNonEmpty!9050 (= (arr!4673 _values!649) (store mapRest!9050 mapKey!9050 mapValue!9050))))

(declare-fun res!101472 () Bool)

(assert (=> start!20818 (=> (not res!101472) (not e!135984))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20818 (= res!101472 (validMask!0 mask!1149))))

(assert (=> start!20818 e!135984))

(declare-fun e!135981 () Bool)

(declare-fun array_inv!3089 (array!9846) Bool)

(assert (=> start!20818 (and (array_inv!3089 _values!649) e!135981)))

(assert (=> start!20818 true))

(assert (=> start!20818 tp_is_empty!5321))

(declare-fun array_inv!3090 (array!9844) Bool)

(assert (=> start!20818 (array_inv!3090 _keys!825)))

(assert (=> start!20818 tp!19418))

(declare-fun b!208513 () Bool)

(assert (=> b!208513 (= e!135981 (and e!135985 mapRes!9050))))

(declare-fun condMapEmpty!9050 () Bool)

(declare-fun mapDefault!9050 () ValueCell!2317)

