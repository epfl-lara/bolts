; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20832 () Bool)

(assert start!20832)

(declare-fun b_free!5473 () Bool)

(declare-fun b_next!5473 () Bool)

(assert (=> start!20832 (= b_free!5473 (not b_next!5473))))

(declare-fun tp!19459 () Bool)

(declare-fun b_and!12237 () Bool)

(assert (=> start!20832 (= tp!19459 b_and!12237)))

(declare-fun b!208716 () Bool)

(declare-fun res!101618 () Bool)

(declare-fun e!136089 () Bool)

(assert (=> b!208716 (=> (not res!101618) (not e!136089))))

(declare-datatypes ((array!9872 0))(
  ( (array!9873 (arr!4686 (Array (_ BitVec 32) (_ BitVec 64))) (size!5011 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9872)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!208716 (= res!101618 (= (select (arr!4686 _keys!825) i!601) k!843))))

(declare-fun b!208717 () Bool)

(declare-fun res!101615 () Bool)

(assert (=> b!208717 (=> (not res!101615) (not e!136089))))

(assert (=> b!208717 (= res!101615 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5011 _keys!825))))))

(declare-fun b!208718 () Bool)

(declare-fun res!101616 () Bool)

(assert (=> b!208718 (=> (not res!101616) (not e!136089))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9872 (_ BitVec 32)) Bool)

(assert (=> b!208718 (= res!101616 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapNonEmpty!9071 () Bool)

(declare-fun mapRes!9071 () Bool)

(declare-fun tp!19460 () Bool)

(declare-fun e!136087 () Bool)

(assert (=> mapNonEmpty!9071 (= mapRes!9071 (and tp!19460 e!136087))))

(declare-datatypes ((V!6761 0))(
  ( (V!6762 (val!2712 Int)) )
))
(declare-datatypes ((ValueCell!2324 0))(
  ( (ValueCellFull!2324 (v!4678 V!6761)) (EmptyCell!2324) )
))
(declare-fun mapValue!9071 () ValueCell!2324)

(declare-datatypes ((array!9874 0))(
  ( (array!9875 (arr!4687 (Array (_ BitVec 32) ValueCell!2324)) (size!5012 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9874)

(declare-fun mapKey!9071 () (_ BitVec 32))

(declare-fun mapRest!9071 () (Array (_ BitVec 32) ValueCell!2324))

(assert (=> mapNonEmpty!9071 (= (arr!4687 _values!649) (store mapRest!9071 mapKey!9071 mapValue!9071))))

(declare-fun b!208720 () Bool)

(declare-fun res!101617 () Bool)

(assert (=> b!208720 (=> (not res!101617) (not e!136089))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!208720 (= res!101617 (and (= (size!5012 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5011 _keys!825) (size!5012 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!208721 () Bool)

(declare-fun res!101619 () Bool)

(assert (=> b!208721 (=> (not res!101619) (not e!136089))))

(declare-datatypes ((List!3022 0))(
  ( (Nil!3019) (Cons!3018 (h!3660 (_ BitVec 64)) (t!7961 List!3022)) )
))
(declare-fun arrayNoDuplicates!0 (array!9872 (_ BitVec 32) List!3022) Bool)

(assert (=> b!208721 (= res!101619 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3019))))

(declare-fun b!208722 () Bool)

(declare-fun res!101620 () Bool)

(assert (=> b!208722 (=> (not res!101620) (not e!136089))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!208722 (= res!101620 (validKeyInArray!0 k!843))))

(declare-fun b!208723 () Bool)

(declare-fun e!136086 () Bool)

(declare-fun tp_is_empty!5335 () Bool)

(assert (=> b!208723 (= e!136086 tp_is_empty!5335)))

(declare-fun b!208724 () Bool)

(declare-fun e!136088 () Bool)

(assert (=> b!208724 (= e!136088 (and e!136086 mapRes!9071))))

(declare-fun condMapEmpty!9071 () Bool)

(declare-fun mapDefault!9071 () ValueCell!2324)

