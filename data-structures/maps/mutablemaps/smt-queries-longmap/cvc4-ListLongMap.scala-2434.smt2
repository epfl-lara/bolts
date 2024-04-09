; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38400 () Bool)

(assert start!38400)

(declare-fun b!395870 () Bool)

(declare-fun res!227115 () Bool)

(declare-fun e!239587 () Bool)

(assert (=> b!395870 (=> (not res!227115) (not e!239587))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!395870 (= res!227115 (validMask!0 mask!1025))))

(declare-fun b!395871 () Bool)

(declare-fun res!227113 () Bool)

(assert (=> b!395871 (=> (not res!227113) (not e!239587))))

(declare-datatypes ((array!23575 0))(
  ( (array!23576 (arr!11236 (Array (_ BitVec 32) (_ BitVec 64))) (size!11588 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23575)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23575 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!395871 (= res!227113 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!395872 () Bool)

(declare-fun res!227120 () Bool)

(assert (=> b!395872 (=> (not res!227120) (not e!239587))))

(declare-fun i!563 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23575 (_ BitVec 32)) Bool)

(assert (=> b!395872 (= res!227120 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!23576 (store (arr!11236 _keys!709) i!563 k!794) (size!11588 _keys!709)) mask!1025))))

(declare-fun b!395873 () Bool)

(declare-fun res!227119 () Bool)

(assert (=> b!395873 (=> (not res!227119) (not e!239587))))

(declare-datatypes ((List!6486 0))(
  ( (Nil!6483) (Cons!6482 (h!7338 (_ BitVec 64)) (t!11668 List!6486)) )
))
(declare-fun arrayNoDuplicates!0 (array!23575 (_ BitVec 32) List!6486) Bool)

(assert (=> b!395873 (= res!227119 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6483))))

(declare-fun b!395874 () Bool)

(declare-fun e!239589 () Bool)

(declare-fun tp_is_empty!9845 () Bool)

(assert (=> b!395874 (= e!239589 tp_is_empty!9845)))

(declare-fun b!395875 () Bool)

(declare-fun noDuplicate!198 (List!6486) Bool)

(assert (=> b!395875 (= e!239587 (not (noDuplicate!198 Nil!6483)))))

(declare-fun b!395876 () Bool)

(declare-fun res!227111 () Bool)

(assert (=> b!395876 (=> (not res!227111) (not e!239587))))

(assert (=> b!395876 (= res!227111 (or (= (select (arr!11236 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11236 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!227118 () Bool)

(assert (=> start!38400 (=> (not res!227118) (not e!239587))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38400 (= res!227118 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11588 _keys!709))))))

(assert (=> start!38400 e!239587))

(assert (=> start!38400 true))

(declare-datatypes ((V!14231 0))(
  ( (V!14232 (val!4967 Int)) )
))
(declare-datatypes ((ValueCell!4579 0))(
  ( (ValueCellFull!4579 (v!7209 V!14231)) (EmptyCell!4579) )
))
(declare-datatypes ((array!23577 0))(
  ( (array!23578 (arr!11237 (Array (_ BitVec 32) ValueCell!4579)) (size!11589 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23577)

(declare-fun e!239590 () Bool)

(declare-fun array_inv!8228 (array!23577) Bool)

(assert (=> start!38400 (and (array_inv!8228 _values!549) e!239590)))

(declare-fun array_inv!8229 (array!23575) Bool)

(assert (=> start!38400 (array_inv!8229 _keys!709)))

(declare-fun b!395877 () Bool)

(declare-fun e!239588 () Bool)

(declare-fun mapRes!16383 () Bool)

(assert (=> b!395877 (= e!239590 (and e!239588 mapRes!16383))))

(declare-fun condMapEmpty!16383 () Bool)

(declare-fun mapDefault!16383 () ValueCell!4579)

